module Lib
    ( someFunc
    ) where

type Peg = String
type Move = (Peg, Peg)

someFunc :: IO ()
someFunc = print $ hanoi 3 "a" "b" "c"

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi disksCount p1 p2 p3
    | disksCount <= 0   = []
    | otherwise         = (hanoi newDisksCount p1 p3 p2) ++ [(p1, p2)] ++ hanoi newDisksCount p3 p2 p1
    where
        newDisksCount = disksCount - 1
