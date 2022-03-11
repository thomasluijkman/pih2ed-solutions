{-
Exercise:
Do the same for the following alternative definition, and note the difference
in the number of conditional expressions that are required:
    True  && b = b
    False && _ = False
-}

(&&*) :: Bool -> Bool -> Bool
a &&* b = if a then b else False

{-
Note that the definition in exercise 5 requires two conditional expressions,
whereas this definition only requires one. This means that this definition,
and the pattern matching definition it was derived from, is more efficient.
-}