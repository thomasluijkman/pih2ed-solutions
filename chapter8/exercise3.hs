{-
Exercise:
Consider the following type of binary trees:
    data Tree a = Leaf a | Node (Tree a) (Tree a)
Let us say that a tree is balanced if the number of leaves in the left and
right subtree of every node differs by at most one, with leaves themselves be-
ing trivially balanced. Define a function balanced :: Tree a -> Bool that
decides if a binary tree is balanced or not.

Hint: first define a function that returns the number of leaves in a tree.
-}

data Tree a = Leaf a | Node (Tree a) (Tree a)

leaves :: Tree a -> Int
leaves (Leaf a)   = 1
leaves (Node x y) = leaves x + leaves y

balanced :: Tree a -> Bool
balanced (Leaf _)   = True
balanced (Node x y) = abs (leaves x - leaves y) <= 1 && balanced x && balanced y