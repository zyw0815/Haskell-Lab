-- 必须导入，用于控制键盘输入回显
import System.IO

-- 1. 无回显读1个字符（输入时不显示在屏幕）
getCh :: IO Char
getCh = do
  hSetEcho stdin False  -- 关闭键盘回显（敲什么不显示）
  x <- getChar          -- 读1个字符
  hSetEcho stdin True   -- 打开回显（恢复正常）
  return x              -- 返回读到的字符

-- 2. 秘密读行：输入时显示"-"，不暴露真实字符
sgetLine :: IO String
sgetLine = do
  x <- getCh            -- 无回显读1个字符
  if x == '\n' then     -- 如果按回车
    do putChar x        -- 打印回车
       return []         -- 结束，返回空列表
    else                -- 否则
      do putChar '-'    -- 屏幕打印"-"代替真实字符
         xs <- sgetLine -- 递归读剩下的字符
         return (x:xs)  -- 把真实字符存起来，返回完整字符串

-- 3. 游戏主入口
hangman :: IO ()
hangman = do
  putStrLn "Think of a word:"  -- 提示：想一个单词
  word <- sgetLine             -- 秘密读取答案单词
  putStrLn "Try to guess it:"  -- 提示：开始猜
  play word                    -- 进入猜词循环

-- 4. 猜词循环（递归，直到猜中）
play :: String -> IO ()
play word = do
  putStr "? "                  -- 提示输入
  guess <- getLine             -- 读取玩家猜的单词
  if guess == word then        -- 猜中了
    putStrLn "You got it!"     -- 输出胜利
    else                       -- 没猜中
      do putStrLn (match word guess)  -- 显示匹配结果
         play word                     -- 递归继续猜

-- 5. 匹配字母：对的显示字母，错的显示"-"
match :: String -> String -> String
match xs ys = [if elem x ys then x else '-' | x <- xs]