{-
Exercise:
Write down definitions that have the following types; it does not matter what
the definitions actually do as long as they are type correct.

The type definitions have been copied below, with a correct example right under it.
-}

bools :: [Bool]
bools = [True, False, True]

nums :: [[Int]]
nums = [[1,2],[3,4,5]]

add :: Int -> Int -> Int -> Int 
add x y z = x + y + z

copy :: a -> (a,a)
copy x = (x,x)

apply :: (a -> b) -> a -> b
apply f x = f x