module Arith4 where

roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)

roundTripPF :: (Show a, Read b) => a -> b
roundTripPF = read . show

main = do
  print (roundTrip 4)
  print (id 4)
