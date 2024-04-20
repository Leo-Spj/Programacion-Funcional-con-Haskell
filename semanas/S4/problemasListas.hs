module ProblemasListas where

-- Problema 1
-- Si quiero en una lista los primeros 10 numeros cuadrados

pow x = x*x
cuadradosLista = [pow x | x <- [1..10]]

cuadradosListaMenoresa20 = [x*x | x <- [1..10], (x*x) < 20]

-- multiplos de 3 del 1 al 100 
multiplosDe3 = [x | x <- [1..100], mod x 3 == 0]

-- entre 10 al 20 pero que no sean de 15 ni 19
entre10y20 = [x | x <- [10..20], x /= 15, x /= 19]

-- sumando x + y dentro de rangos
sumando = [x+y | x <- [1..3], y <- [10..12]] -- cartesiano

sumandoMen17 = [x+y | x <- [1..3], y <- [10..12], x+y < 13]


-- odd es una funcion que devuelve True si el numero es impar
-- even es una funcion que devuelve True si el numero es par

mensaje xs = [if x <0 then "Hola" else "Chau" | x <- xs, even x]



nombres = ["rana", "zebra", "cabra"]
adjetivos = ["verde", "rayada", "negra"]

nombresAdjetivos = [n ++ " " ++ a | n <- nombres, a <- adjetivos]


-- length manual
largo xs = sum[1 | _ <- xs]


-- calcular el maximo elemento de una lista sin usar maximun
maximo [x] = x
maximo (x:xs) = if x > maximo xs then x else maximo xs
