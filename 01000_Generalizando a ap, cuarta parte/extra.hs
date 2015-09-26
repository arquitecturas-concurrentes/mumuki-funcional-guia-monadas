data Validated a = Valid a |
                   Invalid String |
                   Doubtful a String deriving (Show, Eq)

instance Functor (Validated) where
  fmap f (Valid v) = Valid (f v)
  fmap _ (Invalid m) = (Invalid m)
  fmap f (Doubtful v m) = (Doubtful (f v) m)
