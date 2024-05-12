module Func where


-- La clas Functor puede ser vista como una generalización de la función map.

-- ejemplos

-- map (+3) [1,2,3,4,5] -> [4,5,6,7,8]

-- map (++ "s") ["pera","manzana"] -> ["peras","manzanas"]

-- map ("s" ++) ["pera","manzana"] -> ["spera","smanzana"]

-- map (replicate 3) [1,2,3,4,5] -> [[1,1,1],[2,2,2],[3,3,3],[4,4,4],[5,5,5]]

-- map fst [(1,2),(3,4),(5,6)] -> [1,3,5]

-- map snd [(1,2),(3,4),(5,6)] -> [2,4,6]

-- map even [1,2,3,4,5] -> [False,True,False,True,False]

-- map odd [1,2,3,4,5] -> [True,False,True,False,True]

-- map sqrt [1,2,3,4,5] -> [1.0,1.4142135623730951,1.7320508075688772,2.0,2.23606797749979]






-- Definiendo tipos de datos

{-
 circunferencia: (h,k) r
 rectangulo: (x,y) (x',y')
-}

-- Shape será nuestro tipo de dato
-- Circle y Rectangle son constructores de Shape
data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

surface :: Shape -> Float
surface (Circle (Point _ _) r) = pi * r^2
surface (Rectangle (Point x y)  (Point x' y')) = (abs (x-x')) * (abs (y-y'))

-- surface (Circle (Point 0 1) 3)
-- surface (Rectangle  (Point 0 0) (Point 3 3))


data Punto = Punto (Float, Float, Float)
distancia :: Punto -> Punto -> Float
distancia (Punto (x1, y1, z1)) (Punto (x2, y2, z2)) = sqrt ( dx^2 + dy^2 + dz^2) 
    where 
        dx = x1 - x2
        dy = y1 - y2
        dz = z1 - z2

-- distancia (Punto (0,0,0)) (Punto (1,1,1))