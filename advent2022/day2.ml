(* Use this: *)
(* type shape = Rock | Paper | Skizzorz *)

let score_pair pair =
  let opp, me = pair in
  let choice_score =
    match me with "X" -> 1 | "Y" -> 2 | "Z" -> 3 | _ -> failwith "Invalid"
  in
  let outcome_score =
    match (opp, me) with
    | "A", "X" | "B", "Y" | "C", "Z" -> 3
    | "A", "Y" | "B", "Z" | "C", "X" -> 6
    | "A", "Z" | "B", "X" | "C", "Y" -> 0
    | _ -> failwith "Invalid"
  in
  choice_score + outcome_score

let run () =
  let input = Stdio.In_channel.read_all (Utils.input_path_for_day 2) in
  let lines = Str.split (Str.regexp "\n") input in
  let atoms : string list list =
    List.map (fun line -> Str.split (Str.regexp " ") line) lines
  in
  let pairs = List.map (fun atom -> (List.nth atom 0, List.nth atom 1)) atoms in
  let scores = List.map score_pair pairs in
  let total_score = List.fold_left ( + ) 0 scores in
  Stdio.printf "The total rock paper scissors score is now %d." total_score

(* let (opp, me) = pair *)
(* let (opp, me) = (choice_score ) + outcome_score *)
(* let first_pair = List.nth pairs 0 in
   Utils.print_tuple first_pair *)

(* Stdio.printf "%s" (fun tup -> match List.nth pairs 0 with | opp, me -> ) *)

(* let list_to_pair  = List.map (fun atom : string list -> match atom with
       | first :: second :: _whatever -> (first, second)
       | first :: whatever -> (int_of_string first, "")
       | whatever -> ("","")
   ) atoms in
   print_endline List.nth 0 list_to_pair *)

(* let shape_score round = match round with
   | [] -> 0
   | opp :: me
   -> match me with
     | "X" -> 0
     | "Y" -> 1
     | "Z" -> 2

   | one -> 0 *)

(* let score left right = shape_score + outcome_score *)

(* I want to map from a list of strings to a number. *)

(* match tupes with [] -> () | x :: y -> Stdio.print_endline x *)
(* I've now got a list of strings. For each element in a string I want to destructure the string into a tuple. *)

(* let score : (char * char) list -> int list =  *)

(* I want to interpret everythin as a list of tuples. *)
(* and then I want to create a list of scores *)
(* and then I want to return the sum of that list. *)
