second xs = head (tail xs)
swap (x,y) = (y,x)
pair x y = (x,y)
double x = 2*x
palindrome xs = reverse xs == xs
twice f x = f (f x)