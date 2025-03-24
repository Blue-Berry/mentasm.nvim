open Core

(* Starting at filepath, go up the directory tree until we find a dune-project file. *)
let find_dune_project filepath =
  let rec go_up dir =
    let dune_project = Filename.concat dir "dune-project" in
    if Sys_unix.file_exists_exn dune_project
    then dir
    else (
      let parent = Filename.dirname dir ^ "/" in
      go_up parent)
  in
  go_up filepath
;;

let relative_to_dune_project filepath =
  let dune_project = find_dune_project filepath in
  let relative_path = String.chop_prefix ~prefix:dune_project filepath in
  match relative_path with
  | None -> failwithf "Could not find relative path: %s \n %s" filepath dune_project ()
  | Some relative_path -> relative_path
;;

let find_file_with_extension filepath extension =
  let files = Sys_unix.ls_dir filepath in
  let files = List.filter files ~f:(fun file -> Filename.check_suffix file extension) in
  match files with
  | [] -> None
  | [ file ] -> Some file
  | _ -> failwithf "Found multiple files with extension: %s \n %s" extension filepath ()
;;

let asm_file buf_name : string =
  let dir_name = Filename.dirname buf_name ^ "/" in
  let dune_path = find_dune_project buf_name in
  let dir_name = relative_to_dune_project dir_name in
  let ( ^/ ) = Filename.concat in
  let asm_file_path = dune_path ^/ "_build/default/" ^/ dir_name in
  let objs_folder =
    match find_file_with_extension asm_file_path ".objs" with
    | Some objs_folder -> objs_folder
    | None ->
      find_file_with_extension asm_file_path ".eobjs" |> Option.value_exn
  in
  let asm_file_path = asm_file_path ^/ objs_folder ^/ "native/" in
  let asm_file =
    find_file_with_extension asm_file_path ".s" |> Option.value_exn
  in
  let asm_file = asm_file_path ^/ asm_file in
  asm_file
;;
