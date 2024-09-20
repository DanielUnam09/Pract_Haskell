suma :: Integer ->  Integer  -> Integer 
suma  x y = x + y 

multi :: Integer -> Integer -> Integer 
multi x y = x * y

potencia :: Integer -> Integer -> Integer 
potencia x y = x ^ y 

valor_a :: Integer -> Integer 
valor_a x 
 | x <  0  = x * (-1)
 | otherwise = x

valor_b ::  Integer -> Integer 
valor_b  x = if x >=  0 then x else (-x)

perimetro :: Integer -> Integer -> Integer 
perimetro b h =  multi 2 (b+h)

divi :: Integer -> Integer -> Float 
divi x y = fromIntegral  x / fromIntegral y

resta :: Integer -> Integer -> Integer 
resta x y = x - y

doble :: Int -> Int 
doble x = x * 2

cuadrado :: Int -> Int 
cuadrado x = x ^ 2 
