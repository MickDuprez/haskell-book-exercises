-- wordnum.hs
module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String -- type signature
digitToWord n = case n of    -- switch case 
  1 -> "one"  -- if 1 return "one"
  2 -> "two"
  3 -> "three"
  4 -> "four"
  5 -> "five"
  6 -> "six"
  7 -> "seven"
  8 -> "eight"
  9 -> "nine"
  0 -> "zero"
  _ -> ""

digits :: Int -> [Int]
digits n = go n []    -- internal recursive function we called 'go'
  where go num ns       -- where 'go' is difined with params
          | num <= 9 = n:ns                             -- 'guards', like switch case
          | otherwise = go (div num 10) (mod num 10 : ns) -- recurse


-- the main function which pulls together the above to do the work
-- takes an Integral number of any length and returns it as a
-- string of text e.g. 1234 -> "one-two-three-four"
wordNumber :: Int -> String
{- first naive version with plain recursion
  wordNumber n = go [] (digits n) -- go [array for string chars] [array of digits]
  where go str digs
          | tail digs == [] = str ++ digitToWord(head digs)
          | otherwise       = go (str ++ digitToWord(head digs) ++ "-") (tail digs)
-}
-- more idiomatic version with function composition
wordNumber = concat . intersperse "-" . map digitToWord . digits
