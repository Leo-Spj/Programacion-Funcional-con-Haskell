module Pc where



{- 1) Desarrolle una funcion en la que se ingresen 5 numeros enteros positivos 
y realice las cuatro operaciones basicas tomando el mayor y el menor de los 
numeros. Nota: No utilice listas, tampoco funciones haskell min, max.
-}

mayor a b c d e
    | a >= b && a >= c && a >= d && a >= e = a
    | b >= c && b >= d && b >= e = b
    | c >= d && c >= e = c
    | d >= e = d
    | otherwise = e

menor a b c d e
    | a <= b && a <= c && a <= d && a <= e = a
    | b <= c && b <= d && b <= e = b
    | c <= d && c <= e = c
    | d <= e = d
    | otherwise = e

calculadora operacion a b c d e
    | operacion == "suma" = mayor a b c d e + menor a b c d e
    | operacion == "resta" = mayor a b c d e - menor a b c d e
    | operacion == "multiplicacion" = mayor a b c d e * menor a b c d e
    | operacion == "division" = mayor a b c d e / menor a b c d e



{- 2) Dados una lista de listas y un numero natural n , multiplicar los elementos de 
cada sublita por n si la cantidad de elementos de la sublista es menor que n
-}

listaX xs n = [x*n | x<- xs]

subMulti [] n = []
subMulti (l:ls) n
    | length l < n = listaX l n : subMulti ls n
    | otherwise = l : subMulti ls n


{- 3) Dada una lista, determinar el producto de dicha lista con 
su inversa. Nota: No utilice la funcion haskell reverse.
-}

reversa [] = []
reversa (x:xs) = reversa xs ++ [x]

listaXLista xs = [ x*y | x <- xs , y <- reversa xs ]


{- 4) Dado un numero natural n hallar todos 
los numeros primos entre 1 y n
-}

primo n = length ( [x | x<-[2..n-1], mod n x == 0] ) == 0

numerosPrimos n = [x | x <- [1..n], primo x]



{- 5) Data una lista de numeros naturales verifica si es una lista ordenada. 
no usar funciones haskell, retornar true o false usar recursividad
-}

ordenada [] = True
ordenada [_] = True
ordenada (x:y:xs) = x <= y && ordenada (y:xs)





