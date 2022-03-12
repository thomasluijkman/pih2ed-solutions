{-
Exercise:
Define a recursive function sumdown :: Int -> Int that returns the sum
of the non-negative integers from a given value down to zero. For example,
sumdown 3 should return the result 3+2+1+0 = 6
-}

-- GHC provides warning because we do not pattern match against
-- n < 0, however this behaviour is undefined by definition.
sumdown :: Int -> Int
sumdown 0 = 0
sumdown n | n > 0 = n + sumdown (n-1)
