{-
Exercise:
Without looking at the definitions from the standard prelude, define the fol-
lowing higher-order library functions on lists.
    1. Decide if all elements of a list satisfy a predicate:
       all :: (a -> Bool) -> [a] -> Bool
    2. Decide if any element of a list satisfies a predicate:
       any :: (a -> Bool) -> [a] -> Bool
    3. Select elements from a list while they satisfy a predicate:
       takeWhile :: (a -> Bool) -> [a] -> [a]
    4. Remove elements from a list while they satisfy a predicate:
       dropWhile :: (a -> Bool) -> [a] -> [a]
Note: in the prelude the first two of these functions are generic functions
rather than being specific to the type of lists.
-}

all' :: (a -> Bool) -> [a] -> Bool
all' p = and . map p

any' :: (a -> Bool) -> [a] -> Bool
any' p = or . map p

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ []     = []
takeWhile' p (x:xs)  | p x       = x : takeWhile' p xs
                     | otherwise = xs

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ []     = []
dropWhile' p (x:xs)  | p x       = dropWhile' p xs
                     | otherwise = x:xs