import Data.Char(toUpper)

capitalizeLong :: Int -> [String] -> [String]
capitalizeLong n = map (map toUpper) . filter (\x -> length x > n)