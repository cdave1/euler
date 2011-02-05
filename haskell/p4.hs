-- Find the largest palindrome made from the product of two 3-digit numbers.
numbers = [n | ns <- [[x * y | x <- [100..999]] | y <- [100..999]], n <- ns]
main = do print (maximum [n | n <- numbers, s <- [show n], s == reverse s])