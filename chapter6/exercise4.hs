{-
Define a recursive function euclid :: Int -> Int -> Int that implements
Euclid's algorithm for calculating the greatest common divisor of two non-
negative integers: if the two numbers are equal, this number is the result;
otherwise, the smaller number is subtracted from the larger, and the same
process is then repeated. For example:
    > euclid 6 27
    3
-}

euclid :: Int -> Int -> Int
euclid m n | m == n     = m
           | m < n      = euclid m (n-m)
           | otherwise  = euclid n (m-n)
