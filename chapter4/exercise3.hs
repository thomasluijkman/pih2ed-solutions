{-
Exercise:
Consider a function safetail :: [a] -> [a] that behaves in the same way
as tail except that it maps the empty list to itself rather than producing an
error. Using tail and the function null :: [a] -> Bool that decides if a
list is empty or not, define safetail using:
    1. a conditional expression;
    2. guarded equations;
    3. pattern matching.
-}

safetail1 :: [a] -> [a]
safetail1 xs = if null xs then [] else tail xs

safetail2 :: [a] -> [a]
safetail2 xs | null xs   = []
             | otherwise = tail xs

safetail3 :: [a] -> [a]
safetail3 []        = []
safetail3 (x:xs)    = xs