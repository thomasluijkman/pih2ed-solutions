{-
Exercise:
The library function last selects the last element of a non-empty list; for ex-
ample, last [1,2,3,4,5] = 5. Show how the function last could be defined
in terms of the other library functions introduced in this chapter. Can you
think of another possible definition?
-}

last1 xs = head (drop (length xs - 1) xs)

last2 xs = head (reverse xs)