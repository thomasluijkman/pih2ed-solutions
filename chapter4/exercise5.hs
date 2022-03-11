{-
Exercise:
Without using any other library functions or operators, show how the meaning
of the following pattern matching definition for logical conjunction (&&) can be
formalised using conditional expressions:
    True && True    = True
    _ && _          = False
Hint: use two nested conditional expressions.
-}

(&&*) :: Bool -> Bool -> Bool
a &&* b = if a then if b then True else False else False