{-
Exercise:
The Luhn algorithm is used to check bank card numbers for simple errors
such as mistyping a digit, and proceeds as follows:
    - consider each digit as a separate number;
    - moving left, double every other number from the second last;
    - subtract 9 from each number that is now greater than 9;
    - add all numbers together;
    - if the total is divisible by 10, the card number is valid.

Define a function luhnDouble :: Int -> Int that doubles a digit and sub-
tracts 9 if the result is greater than 9. For example:
    > luhnDouble 3
    6

    > luhnDouble 6
    3

Using luhnDouble and the integer remainder function mod, define a function
luhn :: Int -> Int -> Int -> Int -> Bool that decides if a four-digit
bank card number is valid. For example:
    > luhn 1 7 8 4
    True

    > luhn 4 7 8 3
    False
-}

luhnDouble :: Int -> Int
luhnDouble n = if x <= 9 then x else x - 9
               where
                   x = n * 2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn a b c d = (luhnDouble a + b + luhnDouble c + d) `mod` 10 == 0