-- guards.hs
module Guards where

myAbs :: Integer -> Integer
myAbs x
  | x < 0     = (-x)
  | otherwise = x

bloodNa :: Integer -> String
bloodNa x
  | x < 135    = "too low"
  | x > 145    = "too high"
  | otherwise  = "just right"

isRight :: (Num a, Eq a)
        => a -> a -> a -> String
isRight a b c -- c is hypotenuse
  | a^2 + b^2 == c^2 = "Right on!"
  | otherwise  = "not right"


dogYrs :: Integer -> Integer
dogYrs x
  | x <= 0    = 0
  | x <= 1    = x * 15
  | x <= 2    = x * 12
  | x <= 3    = x * 8
  | otherwise = x * 6


avgGrd :: (Fractional a, Ord a) => a -> Char
avgGrd x
  | y >= 0.9  = 'A'
  | y >= 0.8  = 'B'
  | y >= 0.7  = 'C'
  | y >= 0.59 = 'D'
  | y < 0.59  = 'F'
  where y = x / 100

pal xs
  | xs == reverse xs = True
  | otherwise        = False

nums x
  | x < 0  = -1
  | x == 0 = 0
  | x > 0  = 1
