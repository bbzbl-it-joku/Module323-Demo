data ListItem a = Single a | Multiple Int a
  deriving (Show)

encodeModified :: (Eq a) => [a] -> [ListItem a]
encodeModified [] = []
encodeModified (x : y) = if a == 1 then Single x : encodeModified (dropWhile (== x) (x : y)) else Multiple a x : encodeModified (dropWhile (== x) (x : y))
  where
    a = length (takeWhile (== x) (x : y))

-- >>> encodeModified "aaaabccaadeeee"
-- [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
