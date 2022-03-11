{-
Exercise:
What are the types of the following values?

The values have been written out below, with their types above them.
-}

a :: [Char]
a = ['a','b','c']

b :: (Char, Char, Char)
b = ('a','b','c')

c :: [(Bool, Char)]
c = [(False, '0'), (True, '1')]

d :: ([Bool],[Char])
d = ([False,True], ['0', '1'])

e :: [[a] -> [a]]
e = [tail, init, reverse]