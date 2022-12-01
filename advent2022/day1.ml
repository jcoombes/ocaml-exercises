let run () =
  let input = Stdio.In_channel.read_all (Utils.input_path_for_day 1) in
  let elves : int list list =
    Str.split (Str.regexp "\n\n") input
    |> List.map (fun elf ->
           String.split_on_char '\n' elf |> List.map int_of_string)
  in
  let elves' : int list = List.map (List.fold_left ( + ) 0) elves in
  let sorted = List.sort (fun a b -> -compare a b) elves' in
  let biggest_three =
    match sorted with
    | zero :: one :: two :: _sorted_tail -> zero + one + two
    | _ -> failwith "list_doesn't contain >= 3 elements."
  in
  Stdio.printf "The chonkiest three elves is now ... %d calories (combined)"
    biggest_three

(* let max_elf : int = List.fold_left Int.max 0 elves' in
   Stdio.printf "The biggest elf is a chonky boi with %d calories.\n" max_elf *)

(* let string_of_elves = List.fold_left ( ^ ) "" elves in
   Stdio.print_endline string_of_elves *)

(* we want to create a list of lists data structure *)

(* def max_cal_elf(calories: list[list]):
    max_so_far = 0
    for elf in calories:
        if sum(elf) > max_so_far:
     max_so_far = sum(elf)
    return max_so_far
*)
(*

   str.split("\n\n")
   elf.split("\n").map (int_of_string) *)
