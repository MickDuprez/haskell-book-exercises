topFun :: (Int, [a]) -> (Int, [a]) -> (Int, [a])
topFun (a, b) (c, d) =
  ((a + c), (b ++ d))

isPal :: (Eq a) => [a] -> Bool
isPal str = str == (reverse str)

myAbs :: Int -> Int
myAbs n =
  if n < 0
  then n * (-1)
  else n

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f t1 t2  = ((snd t1 , snd t2),  (fst t1, fst t2))


