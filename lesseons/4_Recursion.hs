import Distribution.Simple.Utils (xargs)
-- Aufgabe 1
summ :: Integer -> Integer
summ 0 = 0
summ x = x + summ (x - 1)

-- >>> summ 10000000
-- 500000500000

-- Aufgabe 2
fact :: Integer -> Integer
fact 1 = 1
fact x = x * fact (x - 1)

-- >>> fact 35
-- 10333147966386144929666651337523200000000

-- Aufgabe 3
fib :: Integer -> Integer 
fib 0 = 0
fib 1 = 1
fib x = fib (x - 1) + fib (x - 2)

-- >>> fib 80
-- 21

-- Aufgabe 4
ggt :: Integer -> Integer -> Integer
ggt x y
  | y == 0 = x
  | otherwise = ggt y (mod x y)

-- >>> ggt 6 8
-- 2

-- Aufgabe 5 
expon :: Integer -> Integer -> Integer
expon x y
  | y == 1 = x
  | otherwise = x * expon x (y - 1) 

-- >>> expon 4 3
-- 64

-- Aufgabe 6
bruch :: Integer -> Double
bruch x 
  | x == 1 = 1.0
  | otherwise = 1 / fromIntegral x + bruch (x - 1)

-- >>> bruch 123456789
-- 19.208617435120498
