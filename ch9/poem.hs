-- poem.hs

module PoemLines where

firstSen = "Tyger, Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immoral hand or eye\n"
fourthSen = "Could frame thy fearful\
            \ symmetry"

sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

myLines :: String -> [String]
{-myLines str = go str []
  where go s strs
          | s == "" = strs
          | head s == '\n' = go (tail s) strs
          | otherwise = go (dropWhile (/='\n') s) (strs ++ [takeWhile (/='\n') s])
-}
myLines str = mySplitStr str '\n' -- revised version using general function below


mySplitStr :: String -> Char -> [String]
mySplitStr str char = go str char []
  where go s c ss
          | s == "" = ss
          | head s == c = go (tail s) c ss
          | otherwise = go (dropWhile (/= c) s) c (ss ++ [takeWhile(/= c) s])

-- here are some versions from reddit/r/haskell members who took a look
-- at the above function and gave some alternatives.
myS1 :: Char -> String -> [String]
myS1 char [] = []
myS1 char (c:cs) | c == char = myS1 char cs
myS1 char cs =
  let (l,r) =
        span (/=char) cs in l : myS1 char r

myLines2 :: String -> [String]
myLines2 str = myS1 '\n' str

myS2 :: String -> Char -> [String]
myS2 str delim = foldr f [] str
  where
    f :: Char -> [String] -> [String]
    f x (s : ss)
      | x == delim = [] : s : ss
      | otherwise = (x : s) : ss

myLines3 :: String -> [String]
myLines3 str = myS2 str '\n'

-- test
shouldEqual =
  [ "Tyger, Tyger, burning bright"
  , "In the forests of the night"
  , "What immoral hand or eye"
  , "Could frame thy fearful symmetry"
  ]

main :: IO()
main = do
  print $ "Are they equal mySplitStr? " ++ show (myLines sentences == shouldEqual) 
  print $ "Are they equal myS1? " ++ show (myLines2 sentences == shouldEqual)
  print $ "Are they equal myS2? " ++ show (myLines3 sentences == shouldEqual)
 
