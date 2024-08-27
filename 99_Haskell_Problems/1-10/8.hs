compress :: Eq a => [a] -> [a]
compress (x : []) = [x]
compress (x : y : z) = if x == y then compress (x : z) else [x] ++ compress (y : z)

-- >>> compress "aaaabccaadeeee"
-- "abcade"
