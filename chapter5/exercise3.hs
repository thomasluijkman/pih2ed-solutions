{-
Exercise:
Using a list comprehension and the function grid above, define a function
square :: Int -> [(Int,Int)] that returns a coordinate square of size n,
excluding the diagonal from (0,0) to (n,n). For example:
    > square 2
    [(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)]
-}

-- From exercise 2
grid :: Int -> Int -> [(Int,Int)]
grid m n = [(x,y) | x <- [0..m], y <- [0..n]]

square :: Int -> [(Int,Int)]
square n = [(x,y) | (x,y) <- grid n n, x /= y]