{-
Exercise:
Define a recursive function merge :: Ord a => [a] -> [a] -> [a] that
merges two sorted lists to give a single sorted list. For example:
    > merge [2,5,6] [1,3,4]
    [1,2,3,4,5,6]
Note: your definitions should not use other functions on sorted lists such as
insert or isort, but should be defined using explicit recursion.
-}

merge :: Ord a => [a] -> [a] -> [a]
merge [] []         = []
merge [] ys         = ys
merge xs []         = xs
merge (x:xs) (y:ys) | x <= y    = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys