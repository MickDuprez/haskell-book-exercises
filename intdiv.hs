-- intdiv.hs
module IntDiv where

data DividedResult = Result Integer | DivideByZero

dividedBy :: Integral a => a -> a -> (a,a)
dividedBy num denom = go num denom 0
  where go n d count
          | d == 0 = (0,0)
          | n < d || n < (-d) = (count, n)
          | otherwise = go (n - d) d (count + 1)
