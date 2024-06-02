-- calcular el num de saludos de una reunion de n personas
--  k
-- C n = (n)!/(n-k)!k!

factorial n = product [1..n]

saludos n =  div (factorial n ) (factorial (n-2) * 2)


-- resolver la ecuacion cuadratica
-- a b c

-- signo = [-1,1]
-- raiz = b^2 - 4ac 
-- x 1,2  = (-b + (signo)* sqrt(raiz))/2a

cuadratica a b c = [(-b + signo * sqrt(raiz))/(2*a) | signo <- [-1,1], raiz <- [b^2 - 4*a*c], a /= 0, raiz >= 0]


raices a b c
    | a == 0 = error "No es cuadratica"
    | b^2 - 4*a*c < 0 = error "Discriminante menor a 0"
    | otherwise = [x, y]
        where x = (-b + s) / (2*a)
              y = (-b - s) / (2*a)
              s = sqrt (b^2 - 4*a*c)

-- determinar si un conjun está dentro de otro conjunto


subIzq [] _ = True
subIzq (x:xs) ys =elem x ys && subIzq xs ys

subDer _ [] = True
subDer xs (y:ys) = elem y xs && subDer xs ys

subConjunto xs ys = subIzq xs ys || subDer xs ys



-- concatenar 2 listas sin usar concat ni ++
concatenar [] ys = ys
concatenar (x:xs) ys = x : concatenar xs ys









