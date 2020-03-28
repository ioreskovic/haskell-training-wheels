module Chapter3 where

main :: IO()
main = do
  print (concat [[1, 2, 3], [4, 5, 6]])
  print ((++) "hello" " world")
  print ["hello" ++ " world"]
  print ("hello" !! 4)
  print ((!!) "hello" 4)
  print (take 4 "lovely")
  print (take 3 "awesome")
