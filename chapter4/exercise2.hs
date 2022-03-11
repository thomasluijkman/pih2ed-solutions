{-
Exercise:
Define a function third :: [a] -> a that returns the third element in a list
that contains at least this many elements using:
    1. the head and tail functions;
    2. list indexing (!!);
    3. pattern matching.
-}

third1 :: [a] -> a 
third1 xs = head (tail (tail xs))

third2 :: [a] -> a 
third2 xs = xs !! 2

-- GHC warns patterns are not matched, but the exercise does not ask for the 
-- implementation of other patterns
third3 :: [a] -> a
third3 (_:_:a:xs) = a