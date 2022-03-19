{-
Exercise:
Define a function altMap :: (a -> b) -> (a -> b) -> [a] -> [b] that
alternately applies its two argument functions to successive elements in a list,
in turn about order. For example:
    > altMap (+10) (+100) [0,1,2,3,4]
    [10,101,12,103,14]
-}

altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap f g []       = []
altMap f g [x]      = [f x]
altMap f g (x:y:xs) = f x : g y : altMap f g xs