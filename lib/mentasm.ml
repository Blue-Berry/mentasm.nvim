open Core
open Async
open Vcaml
module Asm = Asm

type state =
  { _start : int
  ; _end : int
  }

let autocmd_group_name = "mentasm"

let register_callback_to_auto_command
      client
      (callback : run_in_background:_ -> client:'b Client.t -> unit Deferred.Or_error.t)
  =
  let open Deferred.Or_error.Let_syntax in
  let%bind group = Autocmd.Group.create [%here] client autocmd_group_name in
  let events = Nonempty_list.return Autocmd.Event.CursorMoved in
  Autocmd.create
    [%here]
    client
    ~description:"MentasmSync"
    ~once:false
    ~group
    ~patterns_or_buffer:(Patterns [ "*" ])
    ~events
    (Ocaml_from_nvim.Callback.anon_rpc callback)
;;

let get_asm client  =
  let open Deferred.Or_error.Let_syntax in
  let%bind buf_name =
    Vcaml.Buffer.get_name [%here] client (Nvim_internal.Buffer.Or_current.Current)
  in
  let asm_file = Find_dune.asm_file buf_name in
  return @@ In_channel.read_all asm_file
;;

let callback buffer ~run_in_background:_ ~client ~original_window ~window ~pos_map ~state =
  let open Deferred.Or_error.Let_syntax in
  let%bind cursor_pos =
    Window.get_cursor [%here] client (Window.Or_current.Id original_window)
  in
  let cursor_pos : Asm.pos = cursor_pos.row, cursor_pos.col in
  (*   lookup cursor, if not found do nothing *)
  let start, end_ =
    match Asm.find_pos cursor_pos pos_map with
    | None ->
      let _start = !state._start in
      let _end = !state._end in
      _start, _end
    | Some (end_, start) ->
      state := { _start = start; _end = end_ };
      start, end_
  in
  (* Set the current line *)
  let%bind () =
    let%bind () = Nvim.set_current_win [%here] client window in
    let%bind () =
      Window.set_cursor
        [%here]
        client
        (Window.Or_current.Id window)
        Position.One_indexed_row.{ row = start + 1; col = 0 }
    in
    let%bind () = Nvim.set_current_win [%here] client original_window in
    return ()
  in
  (* Highlight text *)
  let%bind namespace = Namespace.create [%here] client ~name:"mentasm" () in
  let hl_group : string = "SpellBad" in
  let start_inclusive = Position.{ row = start; col = 0 } in
  let end_exclusive = Position.{ row = end_; col = 20 } in
  let buffer = Buffer.Or_current.Id buffer in
  let%bind () =
    Buffer.Untested.clear_namespace
      [%here]
      client
      buffer
      ~namespace
      ~line_start:0
      ~line_end:(-1)
  in
  let%bind () = Nvim.out_write [%here] client (sprintf "start: %d end:%d\n" start end_) in
  let%bind _ =
    Buffer.Untested.create_extmark
      [%here]
      client
      buffer
      ~namespace
      ~start_inclusive
      ~end_exclusive
      ~hl_group
      ~strict:false
      ()
  in
  return ()
;;

let set_buffer_asm buffer client lines =
  Buffer.set_lines [%here] client (Id buffer) ~start:0 ~end_:1 ~strict_indexing:true lines
;;

let mentasm_stop_command client auto_command_id window =
  let open Deferred.Or_error.Let_syntax in
  Command.create
    [%here]
    client
    ~bar:true
    ()
    ~name:"MentasmStop"
    ~scope:`Global
    (Ocaml_from_nvim.Callback.anon_rpc (fun ~run_in_background ~client ->
       run_in_background [%here] ~f:(fun (_ : [ `asynchronous ] Client.t) ->
         (* This will only run after the RPC returns. *)
         exit 0);
       let%bind () =
         Window.close [%here] client window ~when_this_is_the_buffer's_last_window:Hide
       in
       let%bind () = Autocmd.delete [%here] client auto_command_id in
       Nvim.out_writeln [%here] client "Stopping"))
;;

let on_startup client =
  let open Deferred.Or_error.Let_syntax in
  let%bind lines, file_map =
    let%bind asm = get_asm client in
    let file_map, lines = Asm.filter_file_direcs ( asm |> String.split_lines) in
    let chunks = Asm.parse_lines file_map lines |> Asm.filter_chunks_file "list.ml" in
    let lines, file_map = Asm.lines_map_of_chunks chunks in
    return (lines, file_map)
  in
  let state = ref { _start = 0; _end = 0 } in
  let%bind buffer, original_window, window =
    let%bind buffer = Buffer.create [%here] client ~listed:false ~scratch:true in
    let%bind () = Buffer.Option.set [%here] client (Id buffer) Bufhidden "wipe" in
    (* We block Neovim for this sequence of commands so that they are not interleaved by
       unrelated logic. *)
    block_nvim [%here] client ~f:(fun client ->
      let%bind original_window = Nvim.get_current_win [%here] client in
      let%bind () = Command.exec [%here] client "vsplit" in
      let%bind () = Nvim.set_current_buf [%here] client buffer in
      let%bind () = set_buffer_asm buffer client lines in
      let%bind () = Buffer.Option.set [%here] client (Id buffer) Readonly true in
      let%bind window = Nvim.get_current_win [%here] client in
      let%bind () =
        Window.Option.set_for_current_buffer_in_window
          [%here]
          client
          (Window.Or_current.Id window)
          Window.Option.Per_buffer.Scrolloff
          999
      in
      let%bind () = Nvim.set_current_win [%here] client original_window in
      return (buffer, original_window, window))
  in
  let%bind (auto_command_id : Autocmd.Id.t) =
    register_callback_to_auto_command
      client
      (callback buffer ~original_window ~window ~pos_map:file_map ~state)
  in
  let%bind () =
    mentasm_stop_command client auto_command_id (Window.Or_current.Id window)
  in
  return state
;;

let command =
  Vcaml_plugin.Persistent.create
    ~name:"mentasm"
    ~description:"Registers a callback that follows assembyl"
    ~on_startup
    ~notify_fn:(`Lua "mentasm_setup")
    []
;;
