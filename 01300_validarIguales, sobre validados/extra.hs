import Control.Applicative

data Validated a = Valid a |
                   Invalid String |
                   Doubtful a String deriving (Show, Eq)

instance Functor (Validated) where
  fmap f (Valid v) = Valid (f v)
  fmap _ (Invalid m) = (Invalid m)
  fmap f (Doubtful v m) = (Doubtful (f v) m)

instance Applicative Validated where
  (Invalid m)    <*> _              = Invalid m
  _              <*> (Invalid m)    = Invalid m
  (Valid f)      <*> (Valid x)      = Valid (f x)
  (Valid f)      <*> (Doubtful x m) = Doubtful (f x) m
  (Doubtful f m) <*> (Valid x)      = Doubtful (f x) m
  (Doubtful f m) <*> (Doubtful x _) = Doubtful (f x) m

  pure v = Valid v

validarIguales :: (Eq a, Show a) => a -> a -> Validated a
validarIguales x y | x == y = Valid x
                   | otherwise = Invalid (show x++" /= "++show y)
