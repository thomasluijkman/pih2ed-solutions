{-
Exercise:
Using a list comprehension, give an expression that calculates the sum 1^2 +
2^2 + ... 100^2 of the first one hundred integer squares.
-}

squares :: [Int]
squares = [x^2 | x <- [1..100]]

-- General definition
squarelist :: Integral a => a -> [a]
squarelist n = [x^2 | x <- [1..n]]