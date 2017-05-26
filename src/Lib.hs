module Lib
    ( someFunc
    ) where

type Peg = String
type Move = (Peg, Peg)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
