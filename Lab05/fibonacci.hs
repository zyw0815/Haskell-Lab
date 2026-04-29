import Prelude

fibs :: [Integer]
fibs = 0 : fibs2 0 1
    where
        fibs2 :: Integer -> Integer -> [Integer]
        fibs2 a b = (a + b) : fibs2 b (a + b)

fib :: Integer -> Integer
fib n = fibs !! fromInteger (n - 1)