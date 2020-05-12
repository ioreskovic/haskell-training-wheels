data Identity a =
  Identity a

instance Eq a => Eq (Identity a) where
  (==) (Identity this) (Identity that) = this == that

