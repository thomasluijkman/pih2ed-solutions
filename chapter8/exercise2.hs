{-
Exercise:
Although not included in appendix B, the standard prelude defines
    data Ordering = LT | EQ | GT
together with a function
    compare :: Ord a => a -> a -> Ordering
that decides if one value in an ordered type is less than (LT), equal to (EQ),
or greater than (GT) another value. Using this function, redefine the function
occurs :: Ord a => a -> Tree a -> Bool for search trees. Why is this
new definition mor efficient than the original version?
-}

-- From the book
data Tree a = Leaf a | Node (Tree a) a (Tree a)

occurs :: Ord a => a -> Tree a -> Bool
occurs x (Leaf y)     = x == y
occurs x (Node l y r) = case compare x y of
                            LT -> occurs x l
                            EQ -> True
                            GT -> occurs x r

{-
This definition is more efficient than the previous definition because it requires
less comparisons. Say that comparing objects of type a are very expensive. With
the previous definition, you have potentially two comparisons to make (x == y and x < y)
while here there is only one comparison.
-}
