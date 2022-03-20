{-
Exercise:
Given the type declaration
    data Expr = Val Int | Add Expr Expr
define a higher-order function
    folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a
such that folde f g replaces each Val constructor in an expression by the
function f, and each Add constructor by the function g.
-}

data Expr = Val Int | Add Expr Expr

folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a
folde f g (Val a)   = f a
folde f g (Add l r) = g (folde f g l) (folde f g r)