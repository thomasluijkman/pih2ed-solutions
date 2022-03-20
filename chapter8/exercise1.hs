{-
Exercise:
In a similar manner to the function add, define a recursive multiplication func-
tion mult :: Nat -> Nat -> Nat for the recursive type of natural numbers:
Hint: make use of add in your definition
-}

-- From the book
data Nat = Zero | Succ Nat
    deriving Show

-- From the book
int2nat :: Int -> Nat
int2nat 0 = Zero
int2nat n = Succ (int2nat (n-1))

-- From the book
nat2int :: Nat -> Int
nat2int Zero     = 0
nat2int (Succ n) = 1 + nat2int n

-- From the book
add :: Nat -> Nat -> Nat
add Zero n     = n
add (Succ m) n = Succ (add m n)

mult :: Nat -> Nat -> Nat
mult Zero _        = Zero
mult (Succ Zero) n = n
mult (Succ m) n    = add n (mult m n)