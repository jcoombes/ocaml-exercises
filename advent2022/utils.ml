let greet day = Stdio.printf "Advent of Code 2022, day %d!\n%!" day

let assets_path () =
  let cwd = Unix.getcwd () in
  Filename.concat cwd "advent2022/assets"

let input_path_for_day day =
  let day = Int.to_string day in
  Filename.concat (assets_path ()) ("day" ^ day ^ "input.txt")

let print_tuple tup =
  let left, right = tup in
  print_endline (left ^ " " ^ right)