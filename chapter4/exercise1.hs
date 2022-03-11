{-
Exercise:
Using library functions, define a function halve :: [a] -> ([a],[a]) that
splits an even-lengthed list into two halves. For example:

    > halve [1,2,3,4,5,6]
    ([1,2,3],[4,5,6])
-}

halve :: [a] -> ([a],[a])
halve xs = (take l xs, drop l xs)
           where
               l = length xs `div` 2