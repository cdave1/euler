--fib = 0 : 1 : zipWith (+) fib (tail fib)
--main = do print(take 3 fib) 
     -- print(sum [i | i <- take 15 fib, even i])
f1 = [0,1,2,3,4,5]
f2 = 0 : zipWith (+) f2 (tail f1)
main = do print (f2)