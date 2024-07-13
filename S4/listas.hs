module Lista where


-- cuando se usar ':' en (x:xs) significa que x es el primer elemento de la lista y xs es el resto de la lista

-- haskell agrega por la izquierda con ':'
-- Aggrega elemento
-- Prelude
--  2:[5,3]->[2,5,3]
-- 1:(2:(3:[])) -> [1,2,3]

sumar[] = 0
sumar(x:xs) = x + sumar xs
-- consola: sumar[1..4]



-- Tambien se puede concatenar por la derecha con '++' pero es menos eficiente que ':'
-- puede agregar listas o elementos
-- prelude
-- [1,2,3]++[4,5,6] -> [1,2,3,4,5,6]

-- "hola"++"mundo" -> "holamundo"



-- xs !! n -> devuelve el elemento en la posicion n de la lista xs
-- prelude
-- [1,2,3,4]!!2 -> 3


-- drop n xs -> elimina los primeros n elementos de la lista xs
-- prelude
-- drop 2 [1,2,3,4] -> [3,4]


-- elem x xs -> devuelve True si x es un elemento de la lista xs
-- prelude
-- elem 3 [1,2,3,4] -> True

-- odd es una funcion que devuelve True si el numero es impar
-- even es una funcion que devuelve True si el numero es par


--------------------------------------
    -- head xs -> devuelve el primer elemento de la lista xs
    -- prelude
    -- head [1,2,3,4] -> 1
    -- head "hola" -> 'h'

    -- tail xs -> devuelve la lista xs sin el primer elemento (es como el complemento de head)
    -- prelude
    -- tail [1,2,3,4] -> [2,3,4]
    -- tail "hola" -> "ola

    -- last xs -> devuelve el ultimo elemento de la lista xs
    -- prelude
    -- last [1,2,3,4] -> 4
    -- last "hola" -> 'a'

    -- init xs -> devuelve la lista xs sin el ultimo elemento
    -- prelude
    -- init [1,2,3,4] -> [1,2,3]
    -- init "hola" -> "hol"
--------------------------------------

-- length xs -> devuelve la longitud de la lista xs
-- prelude
-- length [1,2,3,4] -> 4
-- length "hola" -> 4


-- reverse xs -> devuelve la lista xs en orden inverso
-- prelude
-- reverse [1,2,3,4] -> [4,3,2,1]
-- reverse "hola" -> "aloh"

--  take n xs -> devuelve los primeros n elementos de la lista xs
-- prelude
-- take 2 [1,2,3,4] -> [1,2]

-- cycle xs -> devuelve una lista infinita que repite los elementos de la lista xs
-- prelude
-- take 10 (cycle [1,2,3]) -> [1,2,3,1,2,3,1,2,3,1]

-- repeat x -> devuelve una lista infinita que repite el elemento x
-- prelude
-- take 5 (repeat 3) -> [3,3,3,3,3]

-- replicate n x -> devuelve una lista con n elementos iguales a x
-- prelude
-- replicate 3 5 -> [5,5,5]

-- maximum xs -> devuelve el maximo elemento de la lista xs
-- prelude
-- maximum [1,2,3,4] -> 4

-- minimum xs -> devuelve el minimo elemento de la lista xs
-- prelude
-- minimum [1,2,3,4] -> 1

-- sum xs -> devuelve la suma de los elementos de la lista xs
-- prelude
-- sum [1,2,3,4] -> 10

-- product xs -> devuelve el producto de los elementos de la lista xs
-- prelude
-- product [1,2,3,4] -> 24

-- map f xs -> aplica la funcion f a cada elemento de la lista xs
-- prelude
-- map (+1) [1,2,3,4] -> [2,3,4,5]