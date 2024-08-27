pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x : y) = (x : (takeWhile (==x) y)) : pack (dropWhile (==x) y)

-- >>> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
-- ["aaaa","b","cc","aa","d","eeee"]
