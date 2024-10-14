-- Practica 2 Haskell ---------------------
-- Integrantes ------------------------
-- Cortés Nava Jose Luis
-- Becerra Valencia César
-- Aguirre Consuegra Sergio Daniel

data LProp = PTrue | PFalse | Var Nombre | Neg LProp
           | Conj LProp LProp | Disy LProp LProp
           | Impl LProp LProp | Syss LProp LProp

type Nombre = String

-- 7) Esta función  calcula la profundidad de una fórmula lógica
profundidad :: LProp -> Int
profundidad PTrue          = 1
profundidad PFalse         = 1
profundidad (Var _)        = 1
profundidad (Neg p)        = 1 + profundidad p
profundidad (Conj p1 p2)   = 1 + max (profundidad p1) (profundidad p2)
profundidad (Disy p1 p2)   = 1 + max (profundidad p1) (profundidad p2)
profundidad (Impl p1 p2)   = 1 + max (profundidad p1) (profundidad p2)
profundidad (Syss p1 p2)   = 1 + max (profundidad p1) (profundidad p2)

