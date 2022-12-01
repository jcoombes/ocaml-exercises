module type AdventDay = sig
  val run : unit -> unit
end

let run_and_flush (module M : AdventDay) =
  (try M.run ()
   with ex -> Stdio.printf "Failed to run: %s\n" (Printexc.to_string ex));
  (* `%!` flushes, I think?? *)
  Stdio.printf "\n%!"

let () =
  Stdio.printf "Yo\n";
  run_and_flush (module Day2);
  run_and_flush (module Day3);
  run_and_flush (module Day4);
  run_and_flush (module Day5);
  run_and_flush (module Day6);
  run_and_flush (module Day7);
  run_and_flush (module Day8);
  run_and_flush (module Day9);
  run_and_flush (module Day10);
  run_and_flush (module Day11);
  run_and_flush (module Day12);
  run_and_flush (module Day13);
  run_and_flush (module Day14);
  run_and_flush (module Day15);
  ()
