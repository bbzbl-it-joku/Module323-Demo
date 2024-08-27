myLength :: (Foldable t, Num b) => t a -> b
myLength x = foldl (\ x _ -> x + 1) 0 x

-- >>> myLength [123, 456, 789]
-- >>> myLength "Hello, world!"
-- 3
-- 13
