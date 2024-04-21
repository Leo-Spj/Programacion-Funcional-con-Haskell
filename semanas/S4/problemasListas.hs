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



-- ejecutar las 4 operaciones basicas, usando dado 3 numeros enteros, usando el mayor y el mejor, no usar listas
-- 



max3 x y z = max (max x y) z
min3 x y z = min (min x y) z


sumaT x y z = (max3 x y z) + (min3 x y z)

restaT x y z = (max3 x y z) - (min3 x y z)

multiplicacionT x y z = (max3 x y z) * (min3 x y z)

divicionnT x y z = (max3 x y z) / (min3 x y z)


calculadora x y z operador 
    | operador == "suma" = sumaT x y z
    | operador == "resta" = restaT x y z
    | operador == "multiplicacion" = multiplicacionT x y z
    | operador == "divicion" = divicionnT x y z


-- una lista de listas que contenga los valores de los lados un 
-- triangulo rectangulo que sus lados vayan de 1 al 100
triangulos = [[a,b,c]| c <- [1..100], a<-[1..c], b<-[1..a], a^2 +b^2 == c^2]    

-- calcular la distancia entre dos puntos en el plano x y z
distancia (x1,y1,z1) (x2,y2,z2) = sqrt((x2-x1)^2 + (y2-y1)^2 + (z2-z1)^2)