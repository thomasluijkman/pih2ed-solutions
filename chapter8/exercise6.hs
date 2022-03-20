{-
Using folde, define a function eval :: Expr -> Int that evaluates an ex-
pression to an integer value, and a function size :: Expr -> Int that cal-
culates the number of values in an expression.
-}

-- From exercise 5
data Expr = Val Int | Add Expr Expr

-- From exercise 5
folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a
folde f g (Val a)   = f a
folde f g (Add l r) = g (folde f g l) (folde f g r)

eval :: Expr -> Int
eval = folde id (+)

size :: Expr -> Int
size = folde (const 1) (+)