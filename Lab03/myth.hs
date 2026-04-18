myth :: [a] -> Int -> a
myth (x:_) 1 = x
myth (x:xs) n = myth xs (n-1)