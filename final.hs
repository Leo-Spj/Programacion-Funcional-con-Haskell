
data Producto = Producto {codigo :: Int, descripcion :: String, 
                    precioUnitario :: Float, porcentajeDescuento :: Float, stock :: Int} deriving (Show)

p1 = Producto 1 "Arroz" 10 0.1 100
p2 = Producto 2 "Fideos" 20 0.2 200
p3 = Producto 3 "Pan" 30 0.3 300
p4 = Producto 4 "Leche" 40 0.4 400
p5 = Producto 5 "Azucar" 50 0.5 500
p6 = Producto 6 "Aceite" 60 0.6 600
p7 = Producto 7 "Sal" 70 0.7 700
p8 = Producto 8 "Harina" 80 0.8 800
p9 = Producto 9 "Yerba" 90 0.9 900
p10 = Producto 10 "Cafe" 100 0.10 1000

productos = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10]

menorPrecioUnitario :: [Producto] -> Producto
menorPrecioUnitario [p] = p
menorPrecioUnitario (p:ps) = menorPrecioUnitarioAux p (menorPrecioUnitario ps)
  where
    menorPrecioUnitarioAux p1 p2 = if precioUnitario p1 < precioUnitario p2 then p1 else p2

mayorPrecioUnitario :: [Producto] -> Producto
mayorPrecioUnitario [p] = p
mayorPrecioUnitario (p:ps) = mayorPrecioUnitarioAux p (mayorPrecioUnitario ps)
  where
    mayorPrecioUnitarioAux p1 p2 = if precioUnitario p1 > precioUnitario p2 then p1 else p2

promedioPrecioUnitario :: [Producto] -> Float
promedioPrecioUnitario ps = sum (map precioUnitario ps) / fromIntegral (length ps)

menorStock :: [Producto] -> Producto
menorStock [p] = p
menorStock (p:ps) = menorStockAux p (menorStock ps)
  where
    menorStockAux p1 p2 = if stock p1 < stock p2 then p1 else p2

mayorStock :: [Producto] -> Producto
mayorStock [p] = p
mayorStock (p:ps) = mayorStockAux p (mayorStock ps)
  where
    mayorStockAux p1 p2 = if stock p1 > stock p2 then p1 else p2

stockIntermedio :: [Producto] -> Int
stockIntermedio ps = stock (ps !! (length ps `div` 2))


-- menorPrecioUnitario productos
-- mayorPrecioUnitario productos
-- promedioPrecioUnitario productos
-- menorStock productos
-- mayorStock productos
-- stockIntermedio productos



-- dado un punto en el plano cartesinano utilizando la definicion de tipos de datos definir las funciones que permitan que dicho punto P =(x,y)
-- se mueva a una nueva posicion en cualquier sentido para convertirse en P' = (x',y') en el plano cartesiano

data Punto = Punto { x :: Float, y :: Float } deriving (Show)

moverPunto :: Punto -> Float -> Float -> Punto
moverPunto (Punto x y) dx dy = Punto (x + dx) (y + dy)

-- ghci> puntoInicial = Punto 3.0 4.0
-- ghci> moverPunto puntoInicial 2 5
-- Punto {x = 5.0, y = 9.0}



-- dada una lista de enteros verifica que la lista esté desordenada
-- funcion 'listaDesordenada' retorna un booleano

estaOrdenadaAscendente :: [Int] -> Bool
estaOrdenadaAscendente [] = True
estaOrdenadaAscendente [x] = True
estaOrdenadaAscendente (x:y:xs) = x <= y && estaOrdenadaAscendente (y:xs)

estaOrdenadaDescendente :: [Int] -> Bool
estaOrdenadaDescendente [] = True
estaOrdenadaDescendente [x] = True
estaOrdenadaDescendente (x:y:xs) = x >= y && estaOrdenadaDescendente (y:xs)

listaDesordenada :: [Int] -> Bool
listaDesordenada xs = not (estaOrdenadaAscendente xs || estaOrdenadaDescendente xs)

-- listaDesordenada [1,2,3,4,5] -- False
-- listaDesordenada [5,4,3,2,1] -- False
-- listaDesordenada [1,2,3,5,4] -- True
-- listaDesordenada [5,4,3,2,3] -- True


-- se tiene una lista de triplas, encontrar la suma de los 
--cuadrados de todos los elementos de las truplas de la lista

sumarCuadrados :: [(Int, Int, Int)] -> Int
sumarCuadrados [] = 0
sumarCuadrados ((x, y, z):xs) = x^2 + y^2 + z^2 + sumarCuadrados xs

-- sumarCuadrados [(1,2,3), (4,5,6), (7,8,9)] -- 285