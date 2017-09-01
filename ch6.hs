module MyTypes where

data DayOfWeek =
  Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving (Show)

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Wed Wed = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _ = False

instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _   = GT
  compare _ Fri   = LT
  compare _ _     = EQ


data Date = Date DayOfWeek Int deriving Show

instance Eq Date where
  (==) (Date weekday dayOfMonth)(Date weekday' dayOfMonth')
    = weekday == weekday'
      && dayOfMonth == dayOfMonth'



data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn a) (TisAn a') = a == a'



data TwoIntegers =
  Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two a a')(Two a'' a''') =
    a == a'' && a' == a'''



data StringOrInt =
  TisAnInt Int | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt a)(TisAnInt a') = a == a'
  (==) (TisAString s)(TisAString s') = s == s'
  (==) _ _ = False



data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair a1 a2)(Pair a3 a4) = a1 == a3 && a2 == a4



data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a1 b1)(Tuple a2 b2) =
    a1 == a2 && b1 == b2



data Which a = ThisOne a | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne a)(ThisOne a') = a == a'
  (==) (ThatOne a)(ThatOne a') = a == a'
  (==) _ _ = False



data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => (Eq (EitherOr a b)) where
  (==) (Hello a)(Hello b) = a == b
  (==) (Goodbye a)(Goodbye b) = a == b
  (==) _ _ = False
