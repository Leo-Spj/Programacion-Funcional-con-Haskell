

repetirInf x = [x | x<-[1..]]


repetir x = x: repetir x

repiteValorNVeces x n = take n (repetir x)

repiteValoresNVecesRec n x
    | n <= 0 = []
    | otherwise = x : repiteValoresNVecesRec (n-1) x


-- tal que una cadena  "abc" el primero se repida 1 vez el segundo 2 el tercero 3, abbccc
--ecoC:: String -> String
--ecoC xs = concat[ replicate ¡x | (i,x)<- zip [1..] xs]


-- map por comprension
mapComp fun xs = [fun x | x <- xs]

mapRec _ [] = []
mapRec fun (x:xs) = fun x : mapRec fun xs



-- hallar la lista de los primeros pares del 1 al 100

pares = [x | x<- [1..100] , even x]
pares2 = filter even [1..100]


-- Funciones Utiles
-- all p xs -> verifica que TODOS los elementos cummplen la propiedad p
-- all odd [1,2,3]
-- False
-- all odd [1,3,5]
-- True

-- any p xs -> verifica si CUALQUIERA elemento cumple con la propiedad p
-- any odd [1,3,5]
--True
-- any odd [2,4,6]
--False

-- takeWhile -> mientras cumpla la propiedad retorna hasta el primero que no cumpla y retorna el resto
-- takeWhile even [2,4,6,7,8,9]
--[2,4,6]

-- dropWhile -> mientras cumpla la propiedad elimina hasta el primero que no cumpla y retorna el resto
-- dropWhile even [2,4,6,7,8,9]
--[7,8,9]

-- zipWith -> aplica una funcion a los elementos de dos listas
-- zipWith (+) [1,2,3] [4,5,6]
--[5,7,9]

-- definir una estruc de datos que tenga como elem el usuario hostloc etc para una tranf de archivos un serv a otro
-- solo definicio y con criterio 

-- LAMBDAs
-- teoria:
-- las lambdas son funciones anonimas que se pueden usar en cualquier lugar donde se requiera una funcion
-- se definen con '\' y se usa '->' para separar los argumentos de la funcion y el cuerpo de la funcion
-- \x -> x + 1
-- \x y -> x + y
-- \x y z -> x + y + z

-- Ejemplo de uso de lambdas
-- map (\x -> x + 1) [1,2,3,4]

-- zipWith (\a b -> (a*3)/b)[1,2,3] [3,2,1]
-- [1.0,3.0,9.0]



-- Sea un numero natural n si es par entonces lo dividimos entre 2 y si es impar lo multiplicamos por 3 y sumamos 1
-- cuantas secuencias tien una longitud mayor a 15
-- collatz :: Int -> [Int]
collatz 1 = [1]
collatz n
    | even n = n : collatz (n `div` 2)
    | otherwise = n : collatz (n*3 + 1)

-- con lambdas
collatzL n = takeWhile (/=1) (iterate (\x -> if even x then x `div` 2 else x*3 + 1) n)


-- definir la funcion filter por comprension
filterComp fun xs = [x | x <- xs, fun x]
-- filterComp (\x -> x>2) [1,1,2,2,3,4,5]
-- [3,4,5]
--recursion
filterRec _ [] = []
filterRec fun (x:xs)
    | fun x = x:filterRec fun xs
    | otherwise = filterRec fun xs
-- filterRec (\x->x>2) [1,1,2,2,3,4]
-- [3,4]


-- encontrar una lista de listas que el primer elemento sea la raiz cuadrada del segundo elemento, }
-- cada elemento es un numero natural, mostrar los primeros 20 elementos
-- [ [1,2], [2,3], [2,3] ...]

--(\[a,b] -> a*a ==b)

-- take 20 (filterRec (\[a,b] -> sqrt b == a)  [[2,4], [2,5], [3,9]])

-- dada una lista de listas encontrar la lista cuyos elementos sean los primeros elementos de cada sublista
-- siempre que dicho elemento sea mayor que la suma que el resto de elementos de dicha sublista

listaFiltradaX :: [[Int]] -> [Int]
listaFiltradaX lista = [x | (x:xs) <- lista , x > sum xs ]