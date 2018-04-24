let assert_mode = ref false
let quiet = ref false
let verbose = ref 0
let status = ref "undef"

let set_assert_mode b = assert_mode := b
let set_verbose n = verbose := n
let set_quiet b = quiet := b
let set_status s = status := s

let assert_mode () = !assert_mode
let status () = !status
let quiet () = !quiet
let verbose () = !verbose

let logic = ref false
let is_qf = ref false
let is_uf = ref false
let is_real = ref false
let is_int_real = ref false
let is_dt = ref false
let is_linear = ref false
let is_non_linear = ref false

let set_logic t = logic := t
let set_is_qf t = is_qf := t
let set_is_uf t = is_uf := t
let set_is_real t = is_real := t
let set_is_int_real t = is_int_real := t
let set_is_dt t = is_dt := t
let set_is_linear t = is_linear := t
let set_is_non_linear t = is_non_linear := t
let get_logic () = !logic
let get_is_qf () = !is_qf
let get_is_uf () = !is_uf
let get_is_real () = !is_real
let get_is_int_real () = !is_int_real
let get_is_dt () = !is_dt
let get_is_linear () = !is_linear
let get_is_non_linear () = !is_non_linear

let check_command c =
  if assert_mode () then assert false;
  if not (quiet ()) && verbose () > 0 then
    Printf.eprintf "[Warning] (%s not yet supported)\n%!" c

