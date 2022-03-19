{-
Exercise:
A higher-order function unfold that encapsulates a simple pattern of recur-
sion for producing a list can be defined as follows:

    unfold p h t x | p x        = []
                   | otherwise  = h x : unfold p h t (t x)

That is, the function unfold p h t produces the empty list if the predicate p
is true of the argument value, and otherwise produces a non-empty list by
applying the function h to this value to give the head, and the function t
to generate another argument that is recursively processed in the same way
to produce the tail of the list. For example, the function int2in can be
rewritten more compactly using unfold as follows:
    int2bin = unfold (== 0) (`mod` 2) (`div` 2)
Redefine the functions chop8, map f and iterate f using unfold.
-}

import Data.Char

type Bit = Int

unfold :: (a -> Bool) -> (a -> b) -> (a -> a) -> a -> [b]
unfold p h t x | p x        = []
               | otherwise  = h x : unfold p h t (t x)

chop8 :: [Bit] -> [[Bit]]
chop8 = unfold (\x -> length x > 8) (take 8) (drop 8)

map' :: (a -> b) -> [a] -> [b]
map' f = unfold null (f . head) tail

iterate' :: (a -> a) -> a -> [a]
iterate' = unfold (const False) id