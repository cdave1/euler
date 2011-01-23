(* range func to generate a list *)
fun range lo hi (x::xs) = if (lo = hi) then (lo::x::xs) else range (lo+1) hi (lo::x::xs)
  | range lo hi [] = range (lo+1) hi [lo] 

(* attempt a. iterate through a list *)
fun a [] t = t
  | a (x::xs) t = if (x mod 3 = 0) orelse (x mod 5 = 0) then (a xs t+x) else (a xs t)
val v = (Int.toString (a (range 0 999 []) 0));
print (v ^ "\n");

(* attempt b. with recursion and no list *)
fun b lo hi t = if (lo = hi) then t else (if (lo mod 3 = 0) orelse (lo mod 5 = 0) then (b (lo+1) hi (t+lo)) else (b (lo+1) hi t))
val vb = (Int.toString (b 0 1000 0));
print (vb ^ "\n");

(* attempt c. foldl and an anonymous function *)
val c = List.foldl (fn (a,b) => if (a mod 3 = 0) orelse (a mod 5 = 0) then a+b else b) 0 (range 0 999 []);
print ((Int.toString c) ^ "\n"); 