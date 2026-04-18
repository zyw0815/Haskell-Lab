myand :: [Bool] -> Bool
myand [] = True
myand (x:xs) = if x then myand xs else False