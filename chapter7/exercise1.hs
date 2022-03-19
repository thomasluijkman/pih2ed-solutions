{-
Exercise:
Show how the list comprehension [f x | x <- xs, p x] can be re-expressed
using the higher-order functions map and filter.
-}

mapfilter :: (a -> b) -> (a -> Bool) -> [a] -> [b]
mapfilter f p xs = map f (filter p xs)