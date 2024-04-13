module Guardss where

sus :: Num a => a -> a
sus x = x +1

ant :: Int -> Int
ant y = y - 1

absoluto :: Int -> Int
absoluto x = if x > 0 then x else - x 


-- guards
abso x
    | x >= 0 = x
    | x < 0 = -x


sing x 
    | x > 0 = 1
    | x == 0 = 0
    | otherwise = -1 -- <----------- ojo 

singif :: Int -> Int
singif x = if x > 0 then 1 else if x == 0 then 0 else -1