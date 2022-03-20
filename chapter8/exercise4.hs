{-
Exercise:
Define a function balance :: [a] -> Tree a that converts a non-empty
list into a balanced tree. Hint: first define a function that splits a list into two
halves whose length differs by at most one.
-}

-- From exercise 3
data Tree a = Leaf a | Node (Tree a) (Tree a)

halves :: [a] -> ([a],[a])
halves xs = (take n xs, drop n xs)
            where n = length xs `div` 2

balance :: [a] -> Tree a
balance [x] = Leaf x
balance xs  = Node (balance left)  (balance right)
              where (left, right) = halves xs