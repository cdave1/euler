fun head (x::xs) = x
  | head [] = 0

(* ML is an eager language so we can't use a lazy zip like we can with haskell *)
fun fib2 lim (x::xs) = if (x > lim) then (x::xs) else fib2 lim ((x + (head xs))::x::xs)
  | fib2 lim [] = fib2 lim [0, 1];

val t = List.foldl (fn (a,b) => if (a mod 2 = 0) then a+b else b) 0 (fib2 4000000 []);
print ((Int.toString t) ^ "\n");