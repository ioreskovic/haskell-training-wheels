{-# LANGUAGE NoMonomorphismRestriction #-}

module Chapter5 where

i :: a -> a
i a = a

c :: a -> b -> a
c a _ = a

c'' :: b -> a -> b
c'' = c

c' :: a -> b -> b
c' _ b = b

r :: [a] -> [a]
r = i

rr :: [a] -> [a]
rr as = reverse as

co :: (b -> c) -> (a -> b) -> a -> c
co bTOc aTOb a = bTOc (aTOb a)

a :: (a -> c) -> a -> a
a _ x = x

a' :: (a -> b) -> a -> b
a' aTOb a = aTOb a

