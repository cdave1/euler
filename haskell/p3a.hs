-- Returns the correct numbers, but otherwise broken.

gpd lim = [ fst t | t <- takeWhile (\(x,y)->(x<y)) [ (x, div m x) | x <- [2..], m <- [(div lim x)], mod lim x == 0] ]
main = do print(gpd 600851475143)