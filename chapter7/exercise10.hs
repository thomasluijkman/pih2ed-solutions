{-
Using altMap, define a function luhn :: [Int] -> Bool that implements
the Luhn algorithm from the exercises in chapter 4 for bank card numbers of
any length. Test your new function using your own bank card.
-}

-- From exercise 9
altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap f g []       = []
altMap f g [x]      = [f x]
altMap f g (x:y:xs) = f x : g y : altMap f g xs

-- Altered from exercise 4.8
luhnDouble :: Int -> Int
luhnDouble n | x <= 9    = x
             | otherwise = x - 9
             where x = n * 2

luhn :: [Int] -> Bool
luhn ns | even (length ns) = sum (altMap luhnDouble id ns) `mod` 10 == 0
        | otherwise        = sum (altMap id luhnDouble ns) `mod` 10 == 0