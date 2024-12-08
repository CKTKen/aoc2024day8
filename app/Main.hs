module Main where

import Data.Array

data RectList a = RectList (Int,Int) [[a]] | BadList deriving (Show, Eq)

toRL :: [[a]] -> RectList a
toRL [[]] = RectList (0,0) []
toRL xs
  | rowCheck  = RectList (firstLen, length xs) xs
  | otherwise = BadList
  where
    rowCheck = all ((==) firstLen . length) xs
    firstLen = length (head xs)

a = listArray (1,2) [3,4]

main :: IO ()
main = putStrLn "Hello, Haskell!"
