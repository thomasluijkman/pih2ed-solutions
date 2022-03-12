{-
Exercise:
Using the five-step process, construct the library functions that:
    1. calculate the sum of a list of numbers;
    2. take a given number of elements from the start of the list;
    3. select the last element of a non-empty list.
-}

{-
1. calculate the sum of a list of numbers

Step 1: define the type
sum :: Num a => [a] -> a

Step 2: enumerate the cases
sum []      =
sum (x:xs)  =

Step 3: define the simple cases
sum []      = 0
sum (x:xs)  =

Step 4: define the other cases
sum []      = 0
sum (x:xs)  = x + sum xs

Step 5: generalise and simplify
n/a
-}

sum' :: Num a => [a] -> a
sum' []      = 0
sum' (x:xs)  = x + sum' xs

{-
2. take a given number of elements from the start of the list

Step 1: define the type
take :: Int -> [a] -> [a]

Step 2: enumerate the cases
take 0 _        =
take _ []       =
take n (x:xs)   =

Step 3: define the simple cases
take 0 _        = []
take _ []       = []
take n (x:xs)   =

Step 4: define the other cases
take 0 _        = []
tkae _ []       = []
take n (x:xs)   = x : take (n-1) xs

Step 5: generalise and simplify
We can generalise the type: take :: Integral b => b -> [a] -> [a]
-}

take' :: Integral b => b -> [a] -> [a]
take' 0 _       = []
take' _ []      = []
take' n (x:xs)  = x : take' (n-1) xs

{-
3. select the last element of a non-empty list

Step 1: define the type
last :: [a] -> a

Step 2: enumerate the cases
last [x]    =
last (x:xs) =

Step 3: define the simple cases
last [x]    = x
last (x:xs) =

Step 4: define the other cases
last [x]    = x
last (x:xs) = last xs

Step 5: generalise and simplify
n/a
-}

-- GHC provides warning because we do not pattern match against
-- last [], however this behaviour is undefined by definition.
last' :: [a] -> a
last' [x] = x
last' (x:xs) = last xs