import Merge

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort left) (msort right)
    where
        (left, right) = split xs
            where
                split :: [a] -> ([a],[a])
                split [] = ([], [])
                split [x] = ([x], [])
                split (x:y:xs) = (x:left,y:right)
                    where
                        (left, right) = split xs