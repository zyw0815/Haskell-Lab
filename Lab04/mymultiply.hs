data Nat = Zero | Succ Nat deriving Show

myadd :: Nat -> Nat -> Nat
myadd Zero n = n
myadd (Succ m) n = Succ(myadd m n)

mymultiply :: Nat -> Nat -> Nat
mymultiply Zero _ = Zero
mymultiply (Succ m) n = myadd n (mymultiply m n)