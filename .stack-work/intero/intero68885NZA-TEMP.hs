module Main where

main :: IO ()
main = do
  putStrLn $ "Good sum = " ++ (show $ goodSum 2 4)
  putStrLn $ "Bad sum = " ++ (show $ badSum 2 4)

goodSum :: Integer -> Integer -> Integer
goodSum x y = x + y

badSum :: Integer -> Integer -> Integer
badSum x y = do
  putStrLn $ "I'm doing bad stuff!" -- The compiler complains about the use of IO
  getChar
  return $ x + y
