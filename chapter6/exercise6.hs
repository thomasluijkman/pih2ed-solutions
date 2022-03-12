{-
Exercise:
Without looking at the definitions from the standard prelude, define the fol-
lowing library functions on lists using recursion.

    1. Decide if all logical values in a list are True:
       and :: [Bool] -> Bool
    2. Concatenate a list of lists:
       concat :: [[a]] -> [a]
    3. Produce a list with n identical elements:
       replicate :: Int -> a -> [a]
    4. Select the nth element of a list:
       (!!) :: [a] -> Int -> a
    5. Decide if a value is an element of a list:
       elem :: Eq a => a -> [a] -> Bool
Note: most of these functions are defined in the prelude using other library
functions rather than using explicit recursion, and are generic functions rather
than being specific to the type of lists.
-}

and' :: [Bool] -> Bool
and' []     = True
and' (x:xs) = x && and' xs

concat' :: [[a]] -> [a]
concat' []      = []
concat' (x:xs)  = x ++ concat' xs

replicate' :: Int -> a -> [a]
replicate' 0 x = []
replicate' n x = x : replicate' (n-1) x

-- GHC provides warning because we do not pattern match against
-- [] !!* _, however this behaviour is undefined by definition.
(!!*) :: [a] -> Int -> a
(x:xs) !!* 0 = x
(_:xs) !!* n = xs !!* (n-1)

elem' :: Eq a => a -> [a] -> Bool
elem' e []      = False
elem' e (x:xs)  | e == x    = True
                | otherwise = elem' e xs