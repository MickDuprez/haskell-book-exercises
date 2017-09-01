module Reverse where

rvrs :: String -> String
rvrs s = do
  let first = drop 9 s
      second = take 2(drop 6 s)
      third = take 5 s
  first ++ " " ++ second ++ " " ++ third

main :: IO ()
main = print $ rvrs "Curry is awesome"
