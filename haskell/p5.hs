-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
--
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

main = do print (take 1 [n | n <- [2520,5040..], sum (map (mod n) [11..20]) == 0])