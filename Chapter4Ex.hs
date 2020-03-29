module Chapter4Ex where

awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]

p4 = div 6 (length [1, 2, 3])

isPalindrome :: Eq a => [a] -> Bool
isPalindrome lst = lst == reverse lst

myAbs :: Integer -> Integer
myAbs i = if i < 0
          then -i
          else i

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

x = (+)
ltn xs = (x) w 1
  where w = length xs

xx = x

myFst (a, b) = a


