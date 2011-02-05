-- greatest prime factor
gpf n lim [] = gpf n lim [0]
gpf n lim (x:xs) | (lim <= 1) = (x:xs)
gpf n lim (x:xs) | (mod lim n == 0) = gpf (n+1) (div lim n) (x:n:xs) 
gpf n lim (x:xs) | otherwise = gpf (n+1) lim (x:xs) 

main = do print(gpf 2 600851475143 [])