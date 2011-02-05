gpd n lim [] = gpd n lim [0]
gpd n lim (x:xs) | (lim <= 1) = (x:xs)
gpd n lim (x:xs) | (mod lim n == 0) = gpd (n+1) (div lim n) (x:n:xs) 
gpd n lim (x:xs) | otherwise = gpd (n+1) lim (x:xs) 

main = do print(gpd 2 600851475143 [])