{- 
Definir la función rota tal que (rota n xs) es la lista obtenida poniendo los
n primeros elementos de xs al final de la lista. Por ejemplo,
rota 1 [3,2,5,7] == [2,5,7,3]
rota 2 [3,2,5,7] == [5,7,3,2]
rota 3 [3,2,5,7] == [7,3,2,5]
-}

rota n xs = drop n xs ++ take n xs

{- Definir la función rota1 tal que (rota1 xs) es la lista obtenida poniendo el
primer elemento de xs al final de la lista. Por ejemplo,
rota1 [3,2,5,7] == [2,5,7,3]
-}

rota1 xs = tail xs ++ [head xs]
-- rota1 xs = drop 1 xs ++ take 1 xs


{-Definir la función rango tal que (rango xs) es la lista formada por el menor
y mayor elemento de xs. Por ejemplo,
rango [3,2,7,5] == [2,7]
-}

    --Indicación: Se pueden usar minimum y maximum.
-- rango xs = [minimum xs , maximum xs]

    ----Indicación: No se pueden usar minimum y maximum.

minPropio [x] = x
minPropio (x:xs) = if x < minPropio xs then x else minPropio xs

maxPropio [x] = x
maxPropio (x:xs) = if x > maxPropio xs then x else maxPropio xs

rango xs = [minPropio xs, maxPropio xs]
