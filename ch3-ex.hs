-- ch3-ex.hs
module Ch3 where

addBang :: String -> String
addBang str = concat [str, "!"]

get4th :: String -> String
get4th str = take 1 (drop 4 str)

get9on :: String -> String
get9on str = drop 9 str

thirdLetter :: String -> Char
thirdLetter str = str !! 3

letterIndex :: Int -> Char
letterIndex x = str !! x
  where str = "Curry is awesome!"

rvrs :: String
rvrs = do
  let s = "Curry is awesome"
      first = drop 9 s
      second = take 2(drop 6 s)
      third = take 5 s
  first ++ " " ++ second ++ " " ++ third
        
