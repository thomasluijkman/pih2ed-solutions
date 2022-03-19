{-
Exercise:
Redefine the functions map f and filter p using foldr.
-}

map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x -> ([f x] ++)) []

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x xs -> if p x then x:xs else xs) []