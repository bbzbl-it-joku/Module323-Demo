-- Hello World
main :: IO ()
main = putStrLn "Hello World"

-- Multiply 2 Ints
mult :: Int -> Int -> Int
mult x y = x * y

-- >>> mult 5 4
-- 20

-- Switch case Statement
isPositive :: Int -> Bool
isPositive x
  | x > 0 = True
  | otherwise = False

-- >>> isPositive 10
-- True
-- >>> isPositive (-10)
-- False



areaOfTriangle :: Double -> Double -> Double
areaOfTriangle base height = halfBase * height
  where
    halfBase = base / 2


-- >>> areaOfTriangle 1 2
-- 1.0

