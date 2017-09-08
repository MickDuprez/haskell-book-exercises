-- filter.hs

divisibleBy3 = filter (\x -> (mod x 3) == 0)[1..30]

howManyDivisibleBy3 = length divisibleBy3

myFilter :: String -> [String]
myFilter str = filter (\w -> w /= "the" && w /= "a") $ words str

main :: IO()
main = do
  print divisibleBy3
  print howManyDivisibleBy3
  let str = "When the eggs are a gone, the better a night"
  print $ str ++ "-> "
  print $ myFilter str
