-- My first And
myAnd1 :: Bool -> Bool -> Bool
myAnd1 a b = if a then (if b then True else False) else False
-- My second And
myAnd2 :: Bool -> Bool -> Bool
myAnd2 a b = if a then b else False