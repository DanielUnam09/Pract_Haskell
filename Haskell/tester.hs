{-
  Módulo a importar que contiene las funciones a testear.
  Author: Sebastián Alamina Ramírez


  1) Después del import, deben coloar el nombre del módudo de su código fuente:
            import <Nombre_de_módulo>
  2) En su código fuente, deben ageregar la llamada a Eq en el constuctor de Naturales:
            data Natural = Cero | S Natural deriving (Show, Eq)
-}
import Practica01


-- Naturales.
uno         = S Cero
dos         = S uno
tres        = S dos
cuatro      = S tres
cinco       = S cuatro
seis        = S cinco
siete       = S seis
ocho        = S siete
nueve       = S ocho
diez        = S nueve
once        = S diez
doce        = S once
quince      = S (S (S doce))
dieciseis   = S quince
veinte      = S (S (S (S dieciseis)))
veinticinco = S (S (S (S (S (veinte)))))

-- Árboles Binarios.
a0 = Nodo 0 Vacio Vacio
a1 = Nodo 4 (Nodo 3 Vacio Vacio) Vacio
a2 = Nodo 6 Vacio (Nodo 8 Vacio Vacio)
a3 = Nodo 4 (Nodo 2 (Nodo 1 Vacio Vacio) (Nodo 3 Vacio Vacio)) (Nodo 5 Vacio (Nodo 8 (Nodo 6 Vacio (Nodo 7 Vacio Vacio)) Vacio))
a4 = Nodo 0 a1 a3
a5 = Nodo 0 a3 a3
a6 = Nodo 1 (Nodo 3 Vacio Vacio) (Nodo 8 Vacio Vacio)


-- Función principal.
main = do

    print "----- a_natural -----"
    -- print (a_natural (-1) == Cero)
    print (a_natural 0 == Cero)
    print (a_natural 1 == uno)
    print (a_natural 2 == dos)
    print (a_natural 3 == tres)
    print (a_natural 4 == cuatro)
    print (a_natural 5 == cinco)
    print (a_natural 6 == seis)

    print "----- a_entero -----"
    print (a_entero Cero == 0)
    print (a_entero uno == 1)
    print (a_entero dos == 2)
    print (a_entero tres == 3)
    print (a_entero cuatro == 4)
    print (a_entero cinco == 5)
    print (a_entero seis == 6)

    print "----- suma_nat -----"
    -- Fijando 0...
    print ((suma_nat Cero Cero) == Cero)
    print ((suma_nat Cero uno) == uno)
    print ((suma_nat Cero dos) == dos)
    print ((suma_nat Cero tres) == tres)
    print ((suma_nat Cero cuatro) == cuatro)
    print ((suma_nat Cero cinco) == cinco)
    --Fijando 1...
    print ((suma_nat uno Cero) == uno)
    print ((suma_nat uno uno) == dos)
    print ((suma_nat uno dos) == tres)
    print ((suma_nat uno tres) == cuatro)
    print ((suma_nat uno cuatro) == cinco)
    print ((suma_nat uno cinco) == seis)
    --Fijando 2...
    print ((suma_nat dos Cero) == dos)
    print ((suma_nat dos uno) == tres)
    print ((suma_nat dos dos) == cuatro)
    print ((suma_nat dos tres) == cinco)
    print ((suma_nat dos cuatro) == seis)
    print ((suma_nat dos cinco) == siete)
    --Fijando 3...
    print ((suma_nat tres Cero) == tres)
    print ((suma_nat tres uno) == cuatro)
    print ((suma_nat tres dos) == cinco)
    print ((suma_nat tres tres) == seis)
    print ((suma_nat tres cuatro) == siete)
    print ((suma_nat tres cinco) == ocho)
    --Fijando 4...
    print ((suma_nat cuatro Cero) == cuatro)
    print ((suma_nat cuatro uno) == cinco)
    print ((suma_nat cuatro dos) == seis)
    print ((suma_nat cuatro tres) == siete)
    print ((suma_nat cuatro cuatro) == ocho)
    print ((suma_nat cuatro cinco) == nueve)
    --Fijando 5...
    print ((suma_nat cinco Cero) == cinco)
    print ((suma_nat cinco uno) == seis)
    print ((suma_nat cinco dos) == siete)
    print ((suma_nat cinco tres) == ocho)
    print ((suma_nat cinco cuatro) == nueve)
    print ((suma_nat cinco cinco) == diez)

    print "----- mult_nat -----"
    --Fijando 0...
    print ((mult_nat Cero Cero) == Cero)
    print ((mult_nat Cero uno) == Cero)
    print ((mult_nat Cero dos) == Cero)
    print ((mult_nat Cero tres) == Cero)
    print ((mult_nat Cero cuatro) == Cero)
    print ((mult_nat Cero cinco) == Cero)
    --Fijando 1...
    print ((mult_nat uno Cero) == Cero)
    print ((mult_nat uno uno) == uno)
    print ((mult_nat uno dos) == dos)
    print ((mult_nat uno tres) == tres)
    print ((mult_nat uno cuatro) == cuatro)
    print ((mult_nat uno cinco) == cinco)
    --Fijando 2...
    print ((mult_nat dos Cero) == Cero)
    print ((mult_nat dos uno) == dos)
    print ((mult_nat dos dos) == cuatro)
    print ((mult_nat dos tres) == seis)
    print ((mult_nat dos cuatro) == ocho)
    print ((mult_nat dos cinco) == diez)
    --Fijando 3...
    print ((mult_nat tres Cero) == Cero)
    print ((mult_nat tres uno) == tres)
    print ((mult_nat tres dos) == seis)
    print ((mult_nat tres tres) == nueve)
    print ((mult_nat tres cuatro) == doce)
    print ((mult_nat tres cinco) == quince)
    --Fijando 4...
    print ((mult_nat cuatro Cero) == Cero)
    print ((mult_nat cuatro uno) == cuatro)
    print ((mult_nat cuatro dos) == ocho)
    print ((mult_nat cuatro tres) == doce)
    print ((mult_nat cuatro cuatro) == dieciseis)
    print ((mult_nat cuatro cinco) == veinte)
    --Fijando 5...
    print ((mult_nat cinco Cero) == Cero)
    print ((mult_nat cinco uno) == cinco)
    print ((mult_nat cinco dos) == diez)
    print ((mult_nat cinco tres) == quince)
    print ((mult_nat cinco cuatro) == veinte)
    print ((mult_nat cinco cinco) == veinticinco)


    print "----- fibo -----"
    print ((fibo 0) == 0)
    print ((fibo 1) == 1)
    print ((fibo 2) == 1)
    print ((fibo 3) == 2)
    print ((fibo 4) == 3)
    print ((fibo 5) == 5)
    print ((fibo 6) == 8)
    print ((fibo 7) == 13)
    print ((fibo 8) == 21)
    print ((fibo 9) == 34)
    print ((fibo 10) == 55)
    print ((fibo 15) == 610)
    print ((fibo 20) == 6765)

    print "----- multiplica -----"
    --Fijando 0...
    print ((multiplica 0 0) == 0)
    print ((multiplica 0 1) == 0)
    print ((multiplica 0 2) == 0)
    print ((multiplica 0 3) == 0)
    print ((multiplica 0 4) == 0)
    print ((multiplica 0 5) == 0)
    --Fijando 1...
    print ((multiplica 1 0) == 0)
    print ((multiplica 1 1) == 1)
    print ((multiplica 1 2) == 2)
    print ((multiplica 1 3) == 3)
    print ((multiplica 1 4) == 4)
    print ((multiplica 1 5) == 5)
    --Fijando 2...
    print ((multiplica 2 0) == 0)
    print ((multiplica 2 1) == 2)
    print ((multiplica 2 2) == 4)
    print ((multiplica 2 3) == 6)
    print ((multiplica 2 4) == 8)
    print ((multiplica 2 5) == 10)
    --Fijando 3...
    print ((multiplica 3 0) == 0)
    print ((multiplica 3 1) == 3)
    print ((multiplica 3 2) == 6)
    print ((multiplica 3 3) == 9)
    print ((multiplica 3 4) == 12)
    print ((multiplica 3 5) == 15)
    --Fijando 4...
    print ((multiplica 4 0) == 0)
    print ((multiplica 4 1) == 4)
    print ((multiplica 4 2) == 8)
    print ((multiplica 4 3) == 12)
    print ((multiplica 4 4) == 16)
    print ((multiplica 4 5) == 20)
    --Fijando 5...
    print ((multiplica 5 0) == 0)
    print ((multiplica 5 1) == 5)
    print ((multiplica 5 2) == 10)
    print ((multiplica 5 3) == 15)
    print ((multiplica 5 4) == 20)
    print ((multiplica 5 5) == 25)

    print "----- potencia -----"
    print ((potencia 1 0) == 1)
    print ((potencia 2 0) == 1)
    print ((potencia 56 0) == 1)
    print ((potencia 239 0) == 1)
    print ((potencia 3820 0) == 1)
    print ((potencia 92013 0) == 1)
    print ((potencia 2 19) == 524288)
    print ((potencia 16 3) == 4096)
    print ((potencia 27 5) == 14348907)

    print "----- factorial -----"
    print ((factorial 0) == 1)
    print ((factorial 1) == 1)
    print ((factorial 2) == 2)
    print ((factorial 3) == 6)
    print ((factorial 4) == 24)
    print ((factorial 5) == 120)
    print ((factorial 6) == 720)
    print ((factorial 7) == 5040)
    print ((factorial 8) == 40320)

    print "----- division -----"
    print ((divide 3 5) == (0, 3))
    print ((divide 7 1) == (7, 0))
    print ((divide 20 1) == (20, 0))
    print ((divide 40 5) == (8, 0))
    print ((divide 17 57) == (0, 17))
    print ((divide 120 37) == (3, 9))
    print ((divide 24 5) == (4, 4))

    --print "----- division (con tuplas) -----"
    --print ((division (3, 5)) == (0, 3))
    --print ((division (7, 1)) == (7, 0))
    --print ((division (20, 1)) == (20, 0))
    --print ((division (40, 5)) == (8, 0))
    --print ((division (17, 57)) == (0, 17))
    --print ((division (120, 37)) == (3, 9))
    --print ((division (24, 5)) == (4, 4))

    print "----- maximo -----"
    print ((maximo [3,2,5,6,1,1]) == 6)
    print ((maximo [1,1,1,1,1,1]) == 1)
    print ((maximo [(-2),(-1),0,1,2,3]) == 3)
    print ((maximo [-3,-2,-1,0]) == 0)
    print ((maximo [-6,-5,-4,-3,-2,-1]) == -1)
    print ((maximo [3000,21341345,563456,6356,152345,152345]) == 21341345)


    print "----- num_elementos -----"
    print ((num_elementos Vacio) == 0)
    print ((num_elementos a0) == 1)
    print ((num_elementos a1) == 2)
    print ((num_elementos a2) == 2)
    print ((num_elementos a3) == 8)
    print ((num_elementos a4) == 11)
    print ((num_elementos a5) == 17)

    print "----- depth -----"
    print ((depth Vacio) == 0)
    print ((depth a0) == 1)
    print ((depth a1) == 2)
    print ((depth a2) == 2)
    print ((depth a3) == 5)
    print ((depth a4) == 6)
    print ((depth a5) == 6)
