{-
Exercise:
Test your new string transmitter program from the previous exercise using a
faulty communication channel that forgets the first bit, which can be mod-
elled using the tail function on lists of bits
-}

import Data.Char

type Bit = Int 

-- From the book
bin2int :: [Bit] -> Int 
bin2int = foldr (\x y -> x + 2*y) 0

-- From the book
int2bin :: Int -> [Bit]
int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

-- From the book
make8 :: [Bit] -> [Bit]
make8 bits = take 8 (bits ++ repeat 0)

extend :: [Bit] -> [Bit]
extend bits | parity bits = bits ++ [0]
            | otherwise   = bits ++ [1]

parity :: [Bit] -> Bool
parity = even . length . filter (== 1)

-- From the book
encode :: String -> [Bit]
encode = concat . map (extend . make8 . int2bin . ord)

chop9 :: [Bit] -> [[Bit]]
chop9 []   = []
chop9 bits = take 9 bits : chop9 (drop 9 bits)

verify :: [Bit] -> [Bit]
verify []   = error "Empty byte error"
verify bits | parity bits      = init bits
            | otherwise        = error "Parity error"
            where byte = init bits

-- From the book
decode :: [Bit] -> String
decode = map (chr . bin2int . verify) . chop9

-- From the book
transmit :: String -> String
transmit = decode . channel . encode

-- From the book
channel :: [Bit] -> [Bit]
channel = id

faultychannel :: [Bit] -> [Bit]
faultychannel = tail

transmittest :: String -> String
transmittest = decode . faultychannel . encode