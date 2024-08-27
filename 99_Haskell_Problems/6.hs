isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome (x : xs)
  | x == last xs = isPalindrome (init xs)
  | otherwise = False

-- >>> isPalindrome [1,2,3]
-- >>> isPalindrome "madamimadam"
-- >>> isPalindrome [1,2,4,8,16,8,4,2,1]
-- False
-- True
-- True
