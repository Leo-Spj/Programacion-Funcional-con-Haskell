module Tuplas where


-- Tipo de dato que pued tener elementos de diferentes tipo, 
-- lista de tuplas el tamaña y tipo de la tupla deben ser iguales

-- Duplas

-- fst (1,2) -> 1
-- primero (a, b) = a

-- snd (1,2) -> 2
-- segundo (a, b) = b

-- Lista de tuplas:
-- [(23, "Juan"), (17,"María")] : esto es correcto
-- [(23, "Juan"), (17, 33)] :  esto es incorrecto

-- Tupla de tuplas:
-- ((23, "Juan"), ("hola","María"), True, 10) : esto es correcto


-- triangulos rectangulos de triangulos rectangulos menores lado 100
-- creando una lista de tuplas
triangulos = [(a,b,c) | c <- [1..100], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]

listaTrue [] = True
listaTrue (x:xs) = fst x && listaTrue xs

-- no hay recursividad en tuplas

allTrueTupla (x, y) = x && y


-- [("Jorge", 13), ("Maria", 16), ("Juan", 11)]
aprobados lista notaMin = [ nombre | (nombre, nota) <- lista, nota >= notaMin]


-- La funcion zip 
-- zip [1,2,3] ["a", "b", "c"]      -> [(1,1),(2,2),(3,3)] -- Devuelve tuplas de elementos emparejados
-- zip [1,2,3,4,5] ["a", "b", "c"]  -> [(1,1),(2,2),(3,3)] -- NO coloca elementos sin pareja
-- zip [1..] ["a", "b", "c"]        -> [(1,"a"),(2,"b"),(3,"c")]


matrizCuadrada lista1 lista2 = [(x,y) | x <- lista1, y <- lista2]

-- [(1,1), (2,2), (3,3)]
matrizTriangularSuperior lista = [(fst x, snd y) | x <- lista, y <- lista, fst x <= fst y] -- Superior
matrizTriangularInferior lista = [(fst x, snd y) | x <- lista, y <- lista, fst x >= fst y] -- Inferior
