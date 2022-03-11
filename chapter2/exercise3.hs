{- Exercise
The script below contains three syntactic errors. Correct these errors and then
check that your script works properly using GHCi.

N = a 'div' length xs
    where
         a = 10
        xs = [1,2,3,4,5]
-}

n = a `div` length xs
    where
        a   = 10
        xs  = [1,2,3,4,5]

{-
Errors:
- Function should start with a lowercase letter (N => n)
- Putting function in the middle of two arguments requires backticks ('div' => `div`)
- Layout rule should be applied in 'where' section
-}