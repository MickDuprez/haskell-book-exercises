-- regUser.hs
module RegisteredUser where

newtype Username = Username String
newtype AccountNumber = AccountNumber Integer

data User = UnregisteredUser
          | RegisteredUser Username AccountNumber


printUser :: User -> IO()
printUser UnregisteredUser = putStrLn "Uregistered User"
printUser (RegisteredUser (Username name)
                          (AccountNumber acctNum))
  = putStrLn $ name ++ " " ++ show acctNum
            
data WherePenguinsLive = Galapagos
                       | Antarctica
                       | Australia
                       | SouthAfrica
                       | SouthAmerica
                       deriving (Eq, Show)

data Penguin =
  Peng WherePenguinsLive
  deriving (Eq, Show)

isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica SouthAfrica = True
isSouthAfrica _           = False

gimmeWhereItLives :: Penguin -> WherePenguinsLive
gimmeWhereItLives (Peng whereitlives) = whereitlives

