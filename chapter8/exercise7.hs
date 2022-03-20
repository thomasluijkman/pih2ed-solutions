{-
Exercise:
Complete the following instance declarations:
    instance Eq a => Eq (Maybe a) where
        ...
    instance Eq a => Eq [a] where
        ...
-}

-- New Maybe definition to prevent GHC definition conflicts
data Maybee a = Nothingg | Justt a

instance Eq a => Eq (Maybee a) where
    Nothingg == Nothingg = True
    Justt l  == Justt r  = l == r
    _        == _        = False

-- New List definition to prevent GHC definition conflicts
data List' a = Emptyy | Cons a (List' a)

instance Eq a => Eq (List' a) where
    Emptyy    == Emptyy    = True
    Cons l ls == Cons r rs = l == r && ls == rs
    _         == _         = False