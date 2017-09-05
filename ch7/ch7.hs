-- ch7.hs
module Ch7 where

tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10

tensDigit' x = fst(divMod x 10)

huns :: Integral a => a -> a
huns x = d
  where xLast = x `div` 100
        d     = xLast `mod` 10

foldBool :: a -> a -> Bool -> a
foldBool x y b
  | b == True = y
  | otherwise = x

-- patern match version
foldBool' x _ False = x
foldBool' _ y True  = y

g :: (a -> b) -> (a,c) -> (b,c)
g f (x,y) = (f x, y)
