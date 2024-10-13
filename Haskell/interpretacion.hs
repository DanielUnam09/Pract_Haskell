
data LProp = PTrue | PFalse | Var Nombre | Neg LProp
           | Conj LProp LProp | Disy LProp LProp
           | Impl LProp LProp | Syss LProp LProp
           deriving (Show, Eq)

type Nombre = String
type Asignacion = [(String, Bool)]


buscarValor :: Nombre -> Asignacion -> Bool
buscarValor _ [] = error "Variable no asignada"
buscarValor var ((v, val):asig)
    | var == v  = val
    | otherwise = buscarValor var asig


interpretacion :: LProp -> Asignacion -> Bool
interpretacion PTrue _ = True
interpretacion PFalse _ = False
interpretacion (Var x) asig = buscarValor x asig
interpretacion (Neg p) asig = not (interpretacion p asig)
interpretacion (Conj p q) asig = (interpretacion p asig) && (interpretacion q asig)
interpretacion (Disy p q) asig = (interpretacion p asig) || (interpretacion q asig)
interpretacion (Impl p q) asig = not (interpretacion p asig) || (interpretacion q asig)
interpretacion (Syss p q) asig = (interpretacion p asig) == (interpretacion q asig)
