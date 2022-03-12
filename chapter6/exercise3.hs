{-
Exercise:
Define the exponentiation operator ^ for non-negative integers using the same
pattern of recursion as the multiplication operator *, and show how the ex-
pression 2 ^ 3 is evaluated using your definition.
-}

(^*) :: Int -> Int -> Int
m ^* 0 = 1
m ^* n = m * (m ^* (n-1))

{-
Evaluating 2 ^* 3 would go as follows:
2 ^* 3
=   {applying ^*}
2 * (2 ^* 2)
=   {applying ^*}
2 * (2 * (2 ^* 1))
=   {applying ^*}
2 * (2 * (2 * (2 ^* 0)))
=   {applying ^*}
2 * (2 * (2 * 1))
=   {applying *}
8
-}