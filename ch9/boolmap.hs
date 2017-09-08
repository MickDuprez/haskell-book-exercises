-- boolmap.hs
import Data.Bool

myBoolMap :: [Integer]
myBoolMap =  map (\x -> bool x (-3) (x == 3)) [1..10]
