secondToLast :: [a] -> a
secondToLast xs = head(tail(reverse xs))