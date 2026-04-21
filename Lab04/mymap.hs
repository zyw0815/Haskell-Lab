mymap :: (a -> b) -> [a] -> [b]
mymap f ys = foldr (\x xs -> f x : xs) [] ys