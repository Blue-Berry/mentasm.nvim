type chunk = {
  file : string;
  line_start : int;
  line_end : int;
  col_start : int option;
  col_end : int option;
  lines : string list;
}

val sexp_of_chunk : chunk -> Sexplib0.Sexp.t

val filter_file_direcs :
  string list ->
  (Core.Int.t, string) Core.Hashtbl.t * string list
val parse_lines :
  (int, string) Core.Hashtbl_intf.Hashtbl.t ->
  string list ->
  chunk list

