sumFirstTwo :: Num a => [a] -> a
sumFirstTwo xs = head xs + head (tail xs)