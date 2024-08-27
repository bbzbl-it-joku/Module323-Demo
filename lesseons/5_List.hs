-- Lists

-- Aufgabe 1
simpleList :: [Integer]
simpleList = [1 .. 10]

-- >>> simpleList
-- [1,2,3,4,5,6,7,8,9,10]

-- Aufgabe 2
exponList :: [Integer]
exponList = [x * x | x <- [1 .. 10]]

-- >>> exponList
-- [1,4,9,16,25,36,49,64,81,100]

-- Aufgabe 3
sumOfExponList :: Integer
sumOfExponList = sum exponList

-- >>> sumOfExponList
-- 385

-- Aufgabe 4
numInBetween :: Integer -> Integer -> [Integer]
numInBetween x y
  | y >= x = [x .. y]
  | otherwise = [y .. x]

-- >>> numInBetween 5 10
-- [5,6,7,8,9,10]

-- Aufgabe 5
idkHowToNameThis :: Integer -> Float
idkHowToNameThis n = sum [1 / fromIntegral x | x <- [1 .. n]]

-- >>> idkHowToNameThis 2
-- 1.5

-- Aufgabe 6
secondLast :: [t] -> t
secondLast (x : _ : []) = x
secondLast (_ : xs) = secondLast xs

-- >>> secondLast [1..5]
-- 4

-- Aufgabe 7
spacesInStr :: String -> Integer
spacesInStr (' ' : xs) = 1 + spacesInStr xs
spacesInStr (_ : xs) = spacesInStr xs
spacesInStr ([]) = 0

-- >>> spacesInStr "Hello World ! "
-- 8

-- Aufgabe 8
palindrome :: (Eq a) => [a] -> Bool
palindrome [] = True
palindrome [_] = True
palindrome (x : xs)
  | x == last xs = palindrome (init xs)
  | otherwise = False

-- >>> palindrome "hello olleh"
-- True

-- Aufgabe 9
dupli :: [a] -> [a]
dupli (x : []) = [x, x]
dupli (x : xs) = [x, x] ++ dupli xs

-- >>> dupli [1..3]
-- [1,1,2,2,3,3]

-- Aufgabe 10
firstWord :: String -> String
firstWord x = case words x of
  (w : _) -> w
  [] -> "" -- Return an empty string if no words are found

-- >>> firstWord "Hello World"
-- "Hello"
