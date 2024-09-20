
fibonacci :: Integer -> Integer
fibonacci  x = 
          if x == 0 
          then  0
          else if x == 1 
          then  1 
          else  (fibonacci x - 1) +  (fibonacci x -2) 

multi_recurs :: Integer -> Integer -> Integer
multi_recurs x y = 
             if y == 0 
             then 0 
             else  x + (multi_recurs x  y-1)  