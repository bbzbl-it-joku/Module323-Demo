-- Aufgabe 1
customProduct :: [Integer] -> Integer
customProduct x = foldl (*) 1 x

-- >>> customProduct [2,10,5]
-- 100

-- Aufgabe 2
productOfEvenNums :: [Integer] -> Integer
productOfEvenNums x = foldl (*) 1 (filter (even) x)

-- >>> productOfEvenNums [1..5]
-- 8

-- Aufgabe 3
listMax :: [Integer] -> Integer
listMax x = foldl (max) 0 x

-- >>> listMax [1..10]
-- 10

-- Aufgabe 4
listOr :: [Bool] -> Bool
listOr x = foldl (||) False x

-- >>> listOr [False,False,True,False]
-- True

-- Aufgabe 6
reverseStr :: String -> String
reverseStr x = foldl (flip (:)) [] x
--reverseStr x = foldl (\ x y -> y : x) [] x
--reverseStr x = foldr (\ x y -> x ++ [y]) [] x

-- >>> reverseStr "Hello World"
-- "dlroW olleH"
