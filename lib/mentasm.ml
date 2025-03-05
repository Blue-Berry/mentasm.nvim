open Core
open Async
open Vcaml

type state =
  | Prod
  | Test of { time_source : Time_source.Read_write.t }

let register_callback_to_auto_command
      client
      (callback : run_in_background:_ -> client:'b Client.t -> unit Deferred.Or_error.t)
  =
  let open Deferred.Or_error.Let_syntax in
  let%bind group = Autocmd.Group.create [%here] client "mentasm" in
  let events = Nonempty_list.return Autocmd.Event.CursorMoved in
  Autocmd.create
    [%here]
    client
    ~description:"test"
    ~once:false
    ~group
    ~patterns_or_buffer:(Patterns [ "*" ])
    ~events
    (Ocaml_from_nvim.Callback.anon_rpc callback)
;;

let callback buffer ~run_in_background:_ ~client =
  Buffer.set_lines
    [%here]
    client
    (Id buffer)
    ~start:0
    ~end_:1
    ~strict_indexing:true
    [ "Stuff" ]
;;

let on_startup client =
  let open Deferred.Or_error.Let_syntax in
  let state, _, _ =
    match Option.is_some (Unix.getenv "INSIDE_DUNE") with
    | false -> Prod, Time_source.wall_clock (), force Time_ns_unix.Zone.local
    | true ->
      let time_source = Time_source.create ~now:Time_ns.epoch () in
      Test { time_source }, Time_source.read_only time_source, Time_ns_unix.Zone.utc
  in
  let%bind buffer =
    let%bind buffer = Buffer.create [%here] client ~listed:false ~scratch:true in
    let%bind () = Buffer.Option.set [%here] client (Id buffer) Bufhidden "wipe" in
    (* We block Neovim for this sequence of commands so that they are not interleaved by
       unrelated logic. *)
    block_nvim [%here] client ~f:(fun client ->
      let%bind original_window = Nvim.get_current_win [%here] client in
      let%bind () = Command.exec [%here] client "vsplit" in
      let%bind () = Nvim.set_current_buf [%here] client buffer in
      (* let%bind () = Window.set_height [%here] client Current ~height:1 in *)
      (* let%bind () = Window.Option.set [%here] client Current Winfixheight true in *)
      let%bind () = Nvim.set_current_win [%here] client original_window in
      return buffer)
  in
  let%bind (_ : Autocmd.Id.t) =
    register_callback_to_auto_command client (callback buffer)
  in
  return state
;;


let command =
  Vcaml_plugin.Persistent.create
    ~name:"buffer-clock"
    ~description:"Opens a window that displays a clock"
    ~on_startup
    ~notify_fn:(`Lua "buffer_clock_setup")
    [  ]
;;
