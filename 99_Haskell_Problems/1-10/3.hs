elementAt :: [a] -> Int -> a
elementAt x y = x !! (y - 1)

-- >>> elementAt [1,2,3] 2
-- >>> elementAt "haskell" 5
-- 2
-- 'e'
