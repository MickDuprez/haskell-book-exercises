-- top-or-local.hs
module TopOrLocal where

topLevelFunction :: Integer -> Integer
topLevelFunction x =
  x + woot + topLevelValue
  where woot :: Integer
        woot = 5

topLevelValue :: Integer
topLevelValue = 5
