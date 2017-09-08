-- enumex.hs


eftBool :: Bool -> Bool -> [Bool]
eftBool b1 b2
  | b1 > b2 = []
  | b1 == b2 = [b1]
  | otherwise = b1:b2:[]

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd o1 o2 = go o1 o2 []
  where go a1 a2 oarray
          | a2 < a1 = []
          | a1 == a2 = oarray ++ [a2]
          | otherwise = go (succ a1) a2 $ oarray ++ [a1]

-- This is getting boring....

myEft :: (Ord a, Enum a) => a -> a -> [a]
myEft a b = go a b []
  where go a b arr              -- a and b are shadowed here
          | a > b = []
          | a == b = arr ++ [a]
          | otherwise = go (succ a) b $ arr ++ [a]

-- now we can do this to enforce types but reuse the general function myEft
eftInt :: Integer -> Integer -> [Integer]
eftInt = myEft

eftChar :: Char -> Char -> String -- [Char]
eftChar = myEft

-- of course we can update the Bool and Ord functions as well with myEft

-- The fearful summary
myWords :: [Char] -> [[Char]]
myWords str = go str []
  where go str strs
          | str == "" = strs
          | (head str) == ' ' = go (tail str) strs
          | otherwise = go (dropWhile (/= ' ') str) (strs ++ [takeWhile (/=' ') str]) 
