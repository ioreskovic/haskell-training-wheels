data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn this) (TisAn that) = this == that

data TwoIntegers =
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two a b) (Two a' b') = a == a' && b == b'

data StringOrInt =
    TisAnInt   Int
  | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt this) (TisAnInt that) = this == that
  (==) (TisAString this) (TisAString that) = this == that
  (==) _ _ = False

data Pair a =
  Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair a a') (Pair a'' a''') = a == a'' && a' == a'''

data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a b) (Tuple a' b') = a == a' && b == b'

data Which a =
    ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne a) (ThisOne a') = a == a'
  (==) (ThatOne a) (ThatOne a') = a == a'
  (==) (ThisOne a) (ThatOne a') = a == a'
  (==) (ThatOne a) (ThisOne a') = a == a 

data EitherOr a b =
    Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello a') = a == a'
  (==) (Goodbye b) (Goodbye b') = b == b'
  (==) _ _ = False

