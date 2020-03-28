module Reverse where

rvrs :: String -> String
rvrs s = unwords (reverse (words s))

main :: IO ()
main = print (rvrs "Curry is awesome")

