module Ejercicioclase where



-- [3,5,8,1] = [1,8,5,3]
-- [1,2,3,4] = [4,3,2,1]

dereversa [] = []
dereversa (x:xs) = dereversa xs ++ [x]


-- insertar 4 en el punto donde se encuentre uno mayor igual a el [2,3,5,7,4] -> [2,3,4,5,7,4]


insertar y [] = [y]
insertar y xs = if y <= head xs then y : xs else head xs : insertar y (tail xs)

insertar2 y [] = [y]
insertar2 y (x:xs)
    |y<=x = y:x:xs
    |otherwise = x : insertar2 y xs


-- indicar si todos los elementos son pares, o si son todos impares, sin son mixtos retornar mixtos

todosParesPares [] = True
todosParesPares (x:xs) = even x && todosParesPares xs

todosParesImpares [] = True
todosParesImpares (x:xs) = odd x && todosParesImpares xs

todosPares xs
    | todosParesPares xs = "pares"
    | todosParesImpares xs = "impares"
    | otherwise = "mixtos"