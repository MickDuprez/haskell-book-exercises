heimport Data.List (sort)

data Person = Person Bool deriving Show


printPerson :: Person -> IO()
printPerson person = putStrLn (show person)

data Mood = Blah | Woot deriving (Eq, Ord, Show)
settleDown x =
  if x == Woot
  then Blah
  else x


type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object deriving (Eq, Show)

data Rocks = Rocks String deriving (Eq, Ord, Show)

data Yeah = Yeah Bool deriving (Eq, Ord,
 Show)

data Papu = Papu Rocks Yeah deriving (Ord, Eq, Show)

equalityForAll :: Papu -> Papu -> Bool
equalityForAll p p' = p == p'

comparePapus :: Papu -> Papu -> Bool
comparePapus p p' = p > p'

i :: Num a => a
i = 1

f :: RealFrac a => a
f = 1.0

freud :: Ord a => a -> a
freud x = x

freud' :: Int -> Int
freud' x = x

myX = 1 :: Int

sigmund :: Int -> Int
sigmund x = myX


jung :: Ord a => [a] -> a
jung xs = head(sort xs)

young :: [Char] -> Char
young xs = head(sort xs)

mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
signifier xs = head(mySort xs)

chk :: Eq b => (a -> b) ->a -> b -> Bool
chk aToB a b =
    if (==) (aToB a) b
    then True
    else False

arith :: Num b => (a -> b) -> Integer -> a -> b
arith aToB x a = (aToB a) + (aToB a) -- discard the Integer?? it works. could use fromInteger
