-- greetIfCool1.hs
module GreetIfCool1 where

greetIfCool :: String -> IO()
greetIfCool coolness =
  if cool
     then putStrLn "eeyyyyy. What's shakin'?"
  else
    putStrLn "pshhhh"
  where cool = coolness == "downright frosty yo"
  
