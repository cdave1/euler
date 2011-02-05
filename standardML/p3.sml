fun gpd n 1 (x::xs) = (x::xs)
    | gpd _ _ [] = []
    | gpd n (lim:IntInf.int) (x::xs) = if (lim mod n = 0) then 
      	    		     	       	   gpd (n+1) (lim div n) (x::n::xs) 
					else 
					   gpd (n+1) lim (x::xs);

(* No native for large integers, so we need to convert to an IntInf *)
val limit:IntInf.int = case (IntInf.fromString "600851475143") of NONE => 0 | SOME m => m

val out = String.concatWith " " (map IntInf.toString (gpd 2 limit [0]));
print (out ^ "\n");