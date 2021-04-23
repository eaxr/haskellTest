module Main where

import System.IO  
import Control.Monad

toList :: String -> [Integer]
toList input = read ("[" ++ input ++ "]")

list = [1..5]
finalize :: Int -> [(Int,Int,Int)]
finalize input = do
              x <- list
              y <- list
              z <- list
              let z = input*x + input*y + input*x*y
              return (x,y,z)

main :: IO ()
main = do
    putStr "Выбрано значение из конфигурационного файла: "
    file <- readFile "config.ini"
    print file
    let x = read file :: Int
    print $ finalize x
