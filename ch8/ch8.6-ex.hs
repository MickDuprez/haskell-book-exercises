cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

recsum :: (Eq a, Num a) => a -> a
recsum num = go num 0
  where go n sum
          | n == 0 = sum
          | otherwise = go (n - 1) (sum + n)

recmul :: (Integral a) => a -> a -> a
recmul x y = go x y 0
  where go x y sum
          | y == 0 = sum
          | otherwise = go x (y - 1) (sum + x)
