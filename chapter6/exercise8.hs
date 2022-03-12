{-
Exercise:
Using merge, define a function msort :: Ord a => [a] -> [a] that imple-
ments merge sort, in which the empty list and singleton lists are already
sorted, and any other list is sorted by merging together the two lists that
result from sorting the two halves of the list separately.

Hint: first define a function halve :: [a] -> ([a],[a]) that splits a list
into two halves whose lengths differ by at most one.
-}

-- From exercise 7
merge :: Ord a => [a] -> [a] -> [a]
merge [] []         = []
merge [] ys         = ys
merge xs []         = xs
merge (x:xs) (y:ys) | x <= y    = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys

halve :: [a] -> ([a],[a])
halve xs = (take n xs, drop n xs)
           where n = length xs `div` 2

msort :: Ord a => [a] -> [a]
msort []        = []
msort [x]       = [x]
msort (x:y:xs)  = merge (msort as) (msort bs) 
                  where (as,bs) = halve (x:y:xs)