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