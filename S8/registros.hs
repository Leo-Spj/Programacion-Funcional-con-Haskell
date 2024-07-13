data Persona = Persona String String Int Int deriving (Show)

p1 = Persona "Leonardo" "Espejo" 18 17

nombre (Persona n _ _ _) = n
apellido (Persona _ n _ _) = n
nota1 (Persona _ _ n _) = n
nota2 (Persona _ _ _ n) = n

-- nombre p1
-- apellido p1

----------------------------

data PersonaMejorada = PersonaMejorada {name :: String, lastname :: String, point1 :: Int, point2 :: Int} deriving (Show)

p2 = PersonaMejorada "Leonardo" "Espejo" 18 17

-- name p2
-- lastname p2


----------------------------


defaultPerson :: PersonaMejorada
defaultPerson = PersonaMejorada {name="", lastname="", point1=0, point2=0}

x = defaultPerson {name="Leonardo"}
x1 = x {lastname = "Espejo"} -- creo una persona en base a otra, no se puede modificar por ser inmutable


setLastName :: String -> PersonaMejorada -> PersonaMejorada
setLastName  newLastName person = person {lastname = newLastName}
-- setLastName "Espejo" x
setNota  newNota person = person {point1 = newNota}
-- setNota 18 x
-------------------------


