--Agregado por becval :D
data LProp = PTrue | PFalse | Var Nombre | Neg LProp
           | Conj LProp LProp | Disy LProp LProp
           | Impl LProp LProp | Syss LProp LProp
  deriving (Show) -- Para una mejor visualización

type Nombre = String
type Asignacion = [(String, Bool)]

-- Funcion auxiliar xd
auxiliar :: Eq a => [a] -> [a]
auxiliar [] = []
auxiliar (x:xs) = if x `elem` xs
                  then auxiliar xs
                  else x : auxiliar xs
                  
-- Función para extraer las variables de una fórmula
vars :: LProp -> [Nombre]
vars PTrue = []
vars PFalse = []
vars (Var x) = [x]
vars (Neg p) = vars p
vars (Conj p q) = vars p ++ vars q
vars (Disy p q) = vars p ++ vars q
vars (Impl p q) = vars p ++ vars q
vars (Syss p q) = vars p ++ vars q

-- Función para aplicar las leyes de De Morgan
deMorgan :: LProp -> LProp
deMorgan PTrue = PTrue
deMorgan PFalse = PFalse
deMorgan (Neg (Conj p q)) = Disy (Neg p) (Neg q)
deMorgan (Neg (Disy p q)) = Conj (Neg p) (Neg q)
deMorgan (Conj p q) = Conj (deMorgan p) (deMorgan q)
deMorgan (Disy p q) = Disy (deMorgan p) (deMorgan q)
deMorgan (Neg p) = Neg (deMorgan p)
deMorgan p = p

-- Funcion de doble negacion xd
doble_neg :: LProp -> LProp
doble_neg PTrue = PTrue
doble_neg PFalse = PFalse
doble_neg (Var x) = Var x
doble_neg (Neg (Neg p)) = doble_neg p
doble_neg (Neg p) = Neg (doble_neg p)
doble_neg (Conj p q) = Conj (doble_neg p) (doble_neg q)
doble_neg (Disy p q) = Disy (doble_neg p) (doble_neg q)
doble_neg (Impl p q) = Impl (doble_neg p) (doble_neg q)
doble_neg (Syss p q) = Syss (doble_neg p) (doble_neg q)

-- Función para contar el número de conectivos lógicos en una fórmula
conectivos :: LProp -> Int
conectivos PTrue = 0
conectivos PFalse = 0
conectivos (Var _) = 0
conectivos (Neg p) = 1 + conectivos p
conectivos (Conj p q) = 1 + conectivos p + conectivos q
conectivos (Disy p q) = 1 + conectivos p + conectivos q
conectivos (Impl p q) = 1 + conectivos p + conectivos q
conectivos (Syss p q) = 1 + conectivos p + conectivos q

--Funcion  numero de 

main :: IO ()
main = do
  let formula = Conj (Var "p") (Disy (Var "q") (Neg (Var "r")))
  print $ vars formula

