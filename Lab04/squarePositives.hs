squarePositives :: (Num a, Ord a) => [a] -> [a]
squarePositives = map (^2) . filter (>= 0)