fun printn n =
  if n = 0 then () else (print "."; printn (n - 1));

printn 1000000;
