data Validated a = Valid a |
                   Invalid String |
                   Doubtful a String deriving (Show, Eq)

instance Functor (Validated) where
  fmap f (Valid v) = Valid (f v)
  fmap _ (Invalid m) = (Invalid m)
  fmap f (Doubtful v m) = (Doubtful (f v) m)

aplicarValidated (Invalid m) _                 = Invalid m
aplicarValidated _              (Invalid m)    = Invalid m
aplicarValidated (Valid f)      (Valid c)      = Valid (f c)
aplicarValidated (Valid f)      (Doubtful c m) = Doubtful (f c) m
aplicarValidated (Doubtful f m) (Valid c)      = Doubtful (f c) m
aplicarValidated (Doubtful f m) (Doubtful c _) = Doubtful (f c) m  
