myconcat :: [[a]] -> [a]
myconcat [] = []
myconcat (xs:xss) = xs ++ myconcat xss