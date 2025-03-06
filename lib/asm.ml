open Core
type chunk =
  { file : string
  ; line_start : int
  ; line_end : int
  ; col_start : int option
  ; col_end : int option
  ; lines : string list
  } [@@deriving sexp_of]
(*
   Markers:
  - .loc fileno lineno [column]
  - .file fileno filename
*)

(*
   All .file directives must be filtered out and a map of file names to file numbers is created.
lines of assembly are mapped to chunks of source code, split by .loc directives.
*)

let filter_file_direcs lines =
  let rec loop acc acc_lines lines =
    match lines with
    | [] -> List.rev acc, List.rev acc_lines
    | line :: lines ->
      (match line |> String.lstrip |> String.split_on_chars ~on:[ ' '; '\t' ] with
       | [ ".file"; file_no; file_name ] ->
         let file_no = Int.of_string file_no in
         let file_name = String.strip ~drop:(fun c -> Char.( = ) c '\"') file_name in
         loop ((file_no, file_name) :: acc) acc_lines lines
       | _ -> loop acc (line :: acc_lines) lines)
  in
  let file_map, other_lines = loop [] [] lines in
  Hashtbl.of_alist_exn (module Int) file_map, other_lines
;;

let parse_lines (file_map : (int, string) Hashtbl_intf.Hashtbl.t) lines =
  let file file_no =
    Hashtbl.find file_map (file_no |> int_of_string) |> Option.value_exn
  in
  let rec loop (chunk : chunk) (chunks : chunk list) lines =
    match lines with
    | [] ->
      let chunk =
          { chunk with
            lines = List.rev chunk.lines
          ; line_end = chunk.line_start + List.length chunk.lines - 1
          }
      in
      let chunks = chunk :: chunks in
      List.rev chunks
    | line :: lines ->
      let line = line in
      (match line |> String.lstrip |> String.split_on_chars ~on:[ ' '; '\t' ] with
       | [ ".loc"; file_no; line_no ] ->
         let chunk =
             { chunk with
               line_end = int_of_string line_no
             ; col_end = None
             ; lines = List.rev chunk.lines
             }
         in
         let new_chunk : chunk =
           { file = file file_no
           ; line_start = int_of_string line_no
           ; line_end = int_of_string line_no
           ; col_start = None
           ; col_end = None
           ; lines = []
           }
         in
         loop new_chunk (chunk :: chunks) lines
       | [ ".loc"; file_no; line_no; col_no ] ->
         let chunk =
             { chunk with
               line_end = int_of_string line_no
             ; col_end = Some (int_of_string col_no)
             ; lines = List.rev chunk.lines
             }
         in
         let new_chunk : chunk =
           { file = file file_no
           ; line_start = int_of_string line_no
           ; line_end = int_of_string line_no
           ; col_start = Some (int_of_string col_no)
           ; col_end = None
           ; lines = []
           }
         in
         loop new_chunk (chunk :: chunks) lines
       | _ ->
         let chunk = { chunk with lines = line :: chunk.lines } in
         loop chunk chunks lines)
  in
  let new_chunk : chunk =
    { file = ""
    ; line_start = 0
    ; line_end = 0
    ; col_start = None
    ; col_end = None
    ; lines = []
    }
  in
  loop new_chunk [] lines
;;
