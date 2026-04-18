myelem :: Eq a => a-> [a] -> Bool
myelem n [] = False
myelem n (x:xs) = n == x || myelem n xs