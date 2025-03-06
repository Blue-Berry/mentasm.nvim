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
val filter_chunks_file : string -> chunk list -> chunk list

type pos = int * int
type pos_map = (pos * int) list

val lines_map_of_chunks :
  chunk list -> string list * pos_map

val sexp_of_pos : pos -> Sexplib0.Sexp.t


val sexp_of_pos_map : pos_map -> Sexplib0.Sexp.t
val sort_pos_map : pos_map -> pos_map
val find_pos : pos -> pos_map -> (int * int) option

