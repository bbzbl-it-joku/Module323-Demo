import Data.Char

-- Aufgabe 1
upperLetterWords :: String -> String
upperLetterWords x = map (toUpper) x

-- >>> upperLetterWords "Hello World"
-- "HELLO WORLD"

-- Aufgabe 2
onlyLowerLetters :: String -> String
onlyLowerLetters x = filter (isLower) x

-- >>> onlyLowerLetters "Hello World"
-- "elloorld"

-- Aufgabe 3
listCharIsLower :: String -> [Bool]
listCharIsLower x = map (isLower) x

-- >>> listCharIsLower "BaSel"
-- [False,True,False,True,True]

-- Aufgabe 4
isStrLower :: String -> Bool
isStrLower x = and (listCharIsLower x)

-- >>> isStrLower "helloworld"
-- True

-- Aufgabe 5
lowerNum :: [Integer] -> [Integer] -> [Integer]
lowerNum x y = zipWith (\ x y -> if x >= y then y else x) x y

-- >>> lowerNum [11,25,3] [7,41,19]
-- [7,25,3]

-- Aufgabe 6
strListLen :: [String] -> [Int]
strListLen x = map (length) x

-- >>> strListLen ["das", "Ende", "ist", "nahe"]
-- [3,4,3,4]
