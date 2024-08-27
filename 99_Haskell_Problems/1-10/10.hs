encode :: (Eq a) => [a] -> [(Int, a)]
encode [] = []
encode (x : y) = (length (takeWhile (== x) (x : y)), x) : encode (dropWhile (== x) y)

-- >>> encode "aaaabccaadeeee"
-- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
