module Recursividad where

predef x
    | x == 0 = 1
    | x == 1 = 5
    | x == 2 = 2
    | otherwise = -1

-- Usando CASE

predefc x = case x of
    0 -> 1
    1 -> 5
    2 -> 2
    _ -> (-1)

-- predefcc x = case x of {0 -> 1; 1 ->; _ -> (-1)}


f 0 = 1 
f 1 = 5
f 2 = 2
f _ = -1



factosin n = product[1..n]

factorec 1 = 1
factorec n = n * factorec (n-1)


factorguard n
    | n == 1 = 1
    | n > 1 = n * factorguard (n-1)
    | otherwise = error ("Error")


fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)
