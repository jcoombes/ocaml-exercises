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
  run_and_flush (module Day1);
  run_and_flush (module Day2);
  ()
