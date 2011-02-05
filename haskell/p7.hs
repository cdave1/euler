p _ [] = p 3 [2]
p n (x:xs) | (length (x:xs) == 10001) = x
p n (x:xs) | otherwise = if ((length [i | i <- (x:xs), mod n i == 0]) == 0) then p (n+2) (n:x:xs) else p (n+2) (x:xs)
main = do print (p 0 [])