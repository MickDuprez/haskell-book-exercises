-- matchTup.hs
module TupleFunctions where

-- these have to be the same type because
-- (+) is a -> a -> a
addEmUp :: Num a => (a, a) -> a
addEmUp (x, y) = x + y

addEmUp2Alt :: Num a => (a, a) -> a
addEmUp2Alt tup = (fst tup) + (snd tup)

fst3 :: (a, b, c) -> a
fst3 (x, _, _) = x

third3 :: (a,b,c) -> c
third3 (_,_,x) = x

f :: (a, b, c) -> (d,e,f) -> ((a,d),(c,f))
f (a,b,c)(d,e,f) = ((a,d),(c,f))
