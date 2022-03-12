{-
Exercise:
How does the recursive version of the factorial function behave if applied to a
negative argument, such as (-1)? Modify the definition to prohibit negative
arguments by adding a guard to the recursive case.

When a negative argument occurs, the factorial function never terminates.
Consider the argument (-1); evaluating that function will go as follows:
fac (-1)
=   {applying fac}
(-1) * fac (-2)
=   {applying fac}
(-1) * ((-2) * fac (-3))
=   {applying fac}
...
Decreasing this value means it will never hit 0 and enter infinite recursion.
-}

-- GHC provides warning because we do not pattern match against
-- n < 0, however this behaviour is undefined by factorial nature.
fac :: Int -> Int
fac 0 = 1
fac n | n > 0 = n * fac (n-1)