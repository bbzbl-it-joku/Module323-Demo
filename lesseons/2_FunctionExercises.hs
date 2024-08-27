import Data.Time.Format.ISO8601 (yearFormat)

-- Aufgabe 1
isEq :: Int -> Int -> Bool
isEq x y = x == y

-- >>> isEq 1000 1000
-- True

-- Aufgabe 2
areThreeEq :: Int -> Int -> Int -> Bool
areThreeEq x y z = x == y && y == z 

-- >>> areThreeEq 100 2100 1001
-- False

-- Aufgabe 3
biggerNum :: Double -> Double -> Double
biggerNum x y = if x >= y then x else y

-- >>> biggerNum 14 2.9
-- 14.0

-- Aufgabe 4
squared :: Integer -> Integer
squared x = x * x

-- >>> squared 12
-- 144

-- Aufgabe 5
beaufort :: Int -> String
beaufort x
  | x < 0 = "False Input"
  | x <= 8 = "keine Gefahr"
  | x == 9 = "Gefahr"
  | x <= 12 = "erhebliche Gefahr"
  | otherwise = "False Input"

-- >>> beaufort (14)
-- "False Input"

-- Aufgabe 6
prices :: Double -> Double -> Double -> Double
prices x y z
  | x > y = x * (1 - (z / 100))
  | otherwise = x

-- >>> prices 111 101 5
-- 106.0

