(*
fun printn n =
  if n = 0 then () else (print "hi\n"; printn (n - 1));

printn 100000;
*)
print "Hello!\n";
