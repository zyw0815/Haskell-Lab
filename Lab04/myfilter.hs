myfilter :: (a -> Bool) -> [a] -> [a]
myfilter p ys = foldr(\x xs -> if p x then x : xs else xs) [] ys