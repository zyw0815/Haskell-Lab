-- My first Or
myOr1 :: Bool -> Bool -> Bool
myOr1 True True = True
myOr1 True False = True
myOr1 False True = True
myOr1 False False = False
-- My second Or
myOr2 :: Bool -> Bool -> Bool
myOr2 True _ = True
myOr2 _ True = True
myOr2 _ _ = False
-- My third Or
myOr3 :: Bool -> Bool -> Bool
myOr3 False False = False
myOr3 _ _ = True