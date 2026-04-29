type Board = [Int] 

showBoard :: Board -> String
showBoard b = concatMap formatLine (zip [1..] b)
  where
    formatLine (rowNum, stars) = show rowNum ++ ": " ++ replicate stars '*' ++ "\n"

-- removeStars (x,y) b : remove y stars from line x of board b.
removeStars :: (Int,Int) -> Board -> Board
removeStars (x,y) b = [if i == x then val - y else val | (i, val) <- zip [1..] b]

-- read user instructions as line and number of stars
userInput :: IO (Int,Int)
userInput = do
    putStr "Which line? "
    row <- getLine
    putStr "How many stars to remove? "
    star <- getLine
    return (read row, read star)

-- repeat user input until legal move
userInputRepeat :: Board -> IO Board
userInputRepeat b = do 
    (row, star) <- userInput
    if row >= 1 && row <= length b && star > 0 && star <= (b !! (row - 1))
        then return (removeStars (row, star) b)
        else userInputRepeat b

play :: Int -> Board -> IO ()
play n b = do
    if all (== 0) b
        then
            if even n
                then putStrLn "Player 2 wins!"
                else putStrLn "Player 1 wins!"
        else do
            putStrLn (showBoard b)
            if even n
                then putStrLn "Player 1 turn:"
                else putStrLn "Player 2 turn:"
            nextBoard <- userInputRepeat b
            play (n + 1) nextBoard

playNim :: IO ()
playNim = play 0 [5,4,3,2,1]