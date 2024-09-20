---------------------------------------- Funciones Recursivas ----------------------------------------------

-------------------- Función Fibonacci; Da el número de fibonacci indicando su posición. 
fibonacci :: Integer -> Integer  --Especificamos la función, recibe un entero y devuelve un entero 
fibonacci  x = --Definimos la funición para x
          -- Los casos base de Fibonacci
          if x == 0 --Si x es igual a 0 
          then  0 --Retorna 0
          else if x == 1  --En caso de que x sea 1 
          then  1  --Retorna 0 
          -- El caso recursivo
          else  (fibonacci x - 1) + (fibonacci x -2) --Sumamos los números anteriores de x hasta llegar al caso base. 

-------------------- Función Multiplicación; Multiplica 2 Números usando recursividadd 
multi_recurs :: Integer -> Integer -> Integer --Especificamos la función, Recibe 2 enteros y devuelve 1. 
multi_recurs x y  =  --Definimos la función para "x" y "y"
             --Caso Base
             if y == 0 -- Si y es 0 
             then 0 --Retorna 0 
             --Caso Recursivo 
             else  x + (multi_recurs x (y - 1))  -- a x le sumamos x ¿Cuantas veces?, las veces de y,
                                                 -- de igual manera le restamos 1 a y para el caso base

------------------- Función Potencía; Devuelve la potencía de un número indicando la potencía a elevarlo.
potencia_recurs :: Integer -> Integer -> Integer --Especificamos la función, Recibe 2 enteros y devuelve 1. 
potencia_recurs x y = --Definimos la función para "x" y "y"
            --Caso Base
             if y == 0 -- Si y es 0 
            then 1 --Retorna 1 
            --Caso recursivo
            else x * (potencia_recurs x (y-1)) -- a x le multiplicamos x ¿Cuantas veces?, las veces de y,
                                               -- de igual manera le restamos 1 a y para el caso base

------------------ Función Factorial; Devuelve el Factorial de un Número usando recursivdad. 
factorial_recurs :: Integer -> Integer -- Especifimaos la función, Recibe 1 entero y devuelve 1. 
factorial_recurs x = -- Definimos la función para "x".
             -- Caso Base
             if x == 0 -- Si y es 0 
             then 1 --Retorna 1 
             else x * (factorial_recurs (x - 1)) --Multiplicamso x por (x - 1), esto hasta que x sea 0 

------------------ Función División; Devuelve El resultado de una división con enteros usando recursividad. 
div_recurs :: Integer -> Integer -> Integer --Especificamos la función, Recibe 2 valores y devuelve 1. 
div_recurs a b = --Definimos la función para "a" y "b".
           -- Caso Base
           if b == 0 --Si b es 0(NO se puede dividir entre 0)
           then error "No puedes dividir 0 entre cualquier otro número. " -- Manejamos el error con un mensaje. 
           -- Caso Base
           else  if a == 0   --En caso de que "a" sea 0
             then 0 --Retorna 0
             --Caso Recursivo
             else 1 + (div_recurs (a-b) b) -- Vamos sumando 1 por las veces que restamos "b" a "a", hasta el caso base. 

----------------- Función Máximo; Devuelve el Número máximo de una lista usando la recursividad.
-- Aquí usamos 2 funciones, max_recurs = Hace todo el trabajo para encontrar el máximo de una lista. 
-- intro_max = pide la lista pero mas importante inicializa los valores en 0 con los que max_recurs trabajara. 
max_recurs :: [Int] -> Int -> Int -> Int -> Int --Especificamos la función, Recibe 4 valores y devuelve 1. 
max_recurs list num cont init = --Definimos la función para lista, num, cont, init. 
--list = lista a usar; num = Número que contiene el máx; cont = iteramos los elementos de la lista; init = Usamos a init como inizializador(lo actualizamos para no perder el valor de num). 
            let num = list !! init --Cambiamos el valor de num al primero de la lista, init es el indice que usamos en list.
            -- Caso base, in es para usar num, estamos especificando donde usaremos num.
            in  if cont == (length list)  --Si cont es igual a la longitud de la lista, terminamos de comparar cada valor. 
                then num --Retornamos num. 
            -- Caso Recursivo    
                else  if num < list !! cont --Si num es menor al siguiente valor de la lista. 
                      then (max_recurs list (list !! cont) (cont +1) (cont)) -- A num lee asignamos el siguiente valor de la lista y aumentamos a cont para compararlo con el que sigue. 
                      else (max_recurs list num (cont +1) init)  -- En caso de que no sea así, solo aumentamos cont en 1 para la siguiente comparación. 
 
-------------- Función intro_max, al no tener parametros definidos, esta funición lo hace. 
intro_max :: [Int] -> Int --Especifiamos la función, recibe una lista y retorna un entero. 
intro_max  list = max_recurs list 0 0 0 --Definimos la función, para list, y llamamos a max_recurs con list y los valores inicializados. 
        


