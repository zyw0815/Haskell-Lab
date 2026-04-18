perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (factors x) == x]
    where 
        factors :: Int -> [Int]
        factors n = [x | x <- [1..n-1], mod n x == 0]
        sum :: [Int] -> Int
        sum [] = 0
        sum (x:xs) = x + sum xs