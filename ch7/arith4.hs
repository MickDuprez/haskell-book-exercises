-- arith4.hs
module Arith4 where

roundTrip :: (Show a, Read b) => a -> b
roundTrip a = read . show $ a

main = do
  print (roundTrip 4 :: Int)
  print (id 4)
