module Main where

import Control.Monad (guard)

toList :: String -> [Integer]
toList input = read ("[" ++ input ++ "]")

list = [1..20]
finalize :: [(Int,Int,Int)]
finalize = do
              x <- list
              y <- list
              z <- list
              guard $ 1*x + 2*y + 3*x*y < z
              return (x,y,z)

main :: IO ()
main = do
    putStr "Выбран конфигурационный файл:"
    file <- readFile "config.ini"
    putStr file
    putStrLn "\nВведите число:"
    input <- getLine
    print $ sum (toList input)
    print finalize
