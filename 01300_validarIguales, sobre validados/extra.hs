data Validated a = Valid a |
                   Invalid String |
                   Doubtful a String deriving (Show, Eq)

validarIguales :: (Eq a, Show a) => a -> a -> Validated a
validarIguales x y | x == y = Valid x
                   | otherwise = Invalid (show x++" /= "++show y)
