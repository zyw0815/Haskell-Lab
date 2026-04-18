-- My first safetail
safetail1 :: [a] -> [a]
safetail1 xs = if null xs then [] else tail xs
-- My second safetail
safetail2 :: [a] -> [a]
safetail2 xs | null xs = []
                | otherwise = tail xs
-- My third safetail
safetail3 :: [a] -> [a]
safetail3 [] = []
safetail3 (_:xs) = xs