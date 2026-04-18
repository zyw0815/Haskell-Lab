scalarProduct :: Num a => [a] -> [a] -> a
scalarProduct xs ys = sum [x * y | (x,y) <- zip xs ys]
    where
        sum :: Num a => [a] -> a
        sum [] = 0
        sum (x:xs) = x + sum xs