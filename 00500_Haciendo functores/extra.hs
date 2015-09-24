data Validated a = Valid a |
                   Invalid String |
                   Doubtful a String deriving (Show, Eq)

mapValidated f (Valid v) = Valid (f v)
mapValidated _ (Invalid m) = (Invalid m)
mapValidated f (Doubtful v m) = (Doubtful (f v) m)
