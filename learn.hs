-- learn.hs
module Learn where

printInc n = print plusTwo
  where plusTwo = n + 2

printInc2 n = let plusTwo = n + 2
              in print plusTwo

