module Sesion3 where

doble :: Float -> Float
doble x = x + x

-- Reutilizacion de funciones
cuadruple y = 2 * doble y


-- Sea x, y que pertenecen a los enteros positivos. hallar el mayor y el mayor

mayor a b = ( abs(a-b) + abs (a+b) )/2
menor a b = abs ( abs(a-b) - abs(a+b) )/2

mayor3 a b c = mayor (mayor a b) c
menor3 a b c = menor (menor a b) c

mayor4 a b c d = mayor (mayor a b) (mayor c d)
menor4 a b c d = menor (menor a b) (menor c d)

-- Suma con recursividad

suma [] = 0
suma(x:xs) = x + suma xs

xsum :: [Float] -> Float
xsum = foldr (+) 0


