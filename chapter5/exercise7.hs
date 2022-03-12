{-
Exercise:
Show how the list comprehension [(x,y) | x <- [1,2], y <- [3,4]] with
two generators can be re-expressed using two comprehensions with single gen-
erators. Hint: nest one comprehension within the other and make use of the
library function concat :: [[a]] -> [a].
-}

-- From the book
original :: [(Int,Int)]
original = [(x,y) | x <- [1,2], y <- [3,4]]

ls :: [(Int,Int)]
ls = concat [[(x,y) | y <- [3,4]] | x <- [1,2]]