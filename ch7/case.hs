-- case.hs

funcZ x =
  case x + 1 == 1 of
    True -> "Awesome!"
    False -> "wut"

pal xs =
  case xs == reverse xs of
    True -> "yes"
    False -> "no"

pal' xs =
  case y of
    True -> "yes"
    False -> "no"
  where y = xs == reverse xs

greetIfCool :: String -> IO()
greetIfCool coolness =
  case cool of
    True -> putStrLn "eeeyyy. what's shakin?"
    False -> putStrLn "pshhh"
  where cool = coolness == "downright frosty yo"

funcC x y =
  case x > y of
    True -> x
    False -> y

ifEvenAdd2 n =
  case even n of
    True -> n + 2
    False -> n

nums x =
  case compare x 0 of
    LT -> -1
    EQ -> 0
    GT -> 1


