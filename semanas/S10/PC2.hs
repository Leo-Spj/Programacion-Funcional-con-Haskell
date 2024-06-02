-- Data una lista de numeros naturales calcular 
-- el numero natural formado con los elementos de la lista
-- [1,2,3,4,5] = 12345

-- con lambdas
-- para [5,4,3] reverse =  [3,4,5]
-- (/ zip [0..] [3,4,5])
--10^0= 1 * 3 = 3
--10^1= 10 * 4 = 40
--10^2= 100 * 5 = 500
-- suma = 543

numero xs = sum [x * 10^i | (i,x) <- zip [0..] (reverse xs)]



-- Dada una lista de numero naturales y un numero "n" eliminar 
-- las "m" ocurrencias de los elementos de "n" de dicha lista
-- funFiltrar 3 2 [1,2,2,2,3,4,2,2,5] = [1,3,4,2,2,5]

funFiltrar _ _ [] = []
funFiltrar n m (x:xs)
    | x == n && m > 0 = funFiltrar n (m-1) xs
    | otherwise = x : funFiltrar n m xs



-- Dada 2 listas de numeros enteros obtener una tercera lista
-- ordenada descendentemente que contenga TODOS los elementos de ambas listas

ordenar [] = []
ordenar (x:xs) = ordenar [y | y <- xs, y >= x] ++ [x] ++ ordenar [y | y <- xs, y < x]

funOrdenar xs ys = ordenar (xs ++ ys)


-- Dada una base de datos de 10 alumnos, conteniendo su codigo, apellido paterno, 
-- materno , nombre y los promedios finales del curso "Programacion", se solicita: el menor promedio, 
-- el mayor promedio y el promedio de los promedio. Nota: no usar funciones aplicadas a listas

data Alumno = Alumno {codigo :: Int , nombre :: String, paterno :: String, materno :: String, promedio :: Float} deriving (Show)

p1 = Alumno 1 "Leonardo" "Espejo" "Moya" 20
p2 = Alumno 2 "Alexander" "Perez" "Moya" 15
p3 = Alumno 3 "Javier" "Zapater" "Moya" 10
p4 = Alumno 4 "Carlos" "Gonzales" "Moya" 18
p5 = Alumno 5 "Luis" "Garcia" "Moya" 12
p6 = Alumno 6 "Jorge" "Guitton" "Moya" 16
p7 = Alumno 7 "Rosa" "Barra" "Moya" 14
p8 = Alumno 8 "Ratatuil" "Arce" "Moya" 17
p9 = Alumno 9 "Carlos" "Zapata" "Moya" 19
p10 = Alumno 10 "Leandro" "Zoza" "Moya" 13

menor [x] = x
menor (x:xs) = min x (menor xs)

mayor [x] = x
mayor (x:xs) = max x (mayor xs)

promedioAlumnos = (promedio p1 + promedio p2 + promedio p3 + promedio p4 + promedio p5 + promedio p6 + promedio p7 + promedio p8 + promedio p9 + promedio p10) / 10

menorPromedio = menor [promedio p1, promedio p2, promedio p3, promedio p4, promedio p5, promedio p6, promedio p7, promedio p8, promedio p9, promedio p10]
mayorPromedio = mayor [promedio p1, promedio p2, promedio p3, promedio p4, promedio p5, promedio p6, promedio p7, promedio p8, promedio p9, promedio p10]


-- dado una lista de numeros enteros devolver una tripla formada por las suma de los caudrados 
--de los numeros pares, la suma de los cuadrados de los numeros impares
-- y un indicador que indentifique al mayor de los 2 numeros 1 para el primero 2 para la segunda 0 si son iguales

sumaCuadradosPares xs = sum [x^2 | x <- xs, even x]
sumaCuadradosImpares xs = sum [x^2 | x <- xs, odd x]
identificador xs ys
    | xs > ys = 1
    | xs < ys = 2
    | otherwise = 0

tripla xs = (sumaCuadradosPares xs, sumaCuadradosImpares xs, identificador (sumaCuadradosPares xs) (sumaCuadradosImpares xs))


--dado un punto en el plano cartesiano *utilizando la definicion de tipos de datos*
-- definir las funciones que permitan que dicho punto se mueva a una nueva posicion en el 
-- sentido de los 4 puntos cardinales y una combinacion de ellos



