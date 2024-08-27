myReverse :: Foldable t => t a -> [a]
myReverse x = foldl (flip (:)) [] x

-- >>> myReverse "A man, a plan, a canal, panama!"
-- >>> myReverse [1,2,3,4]
-- "!amanap ,lanac a ,nalp a ,nam A"
-- [4,3,2,1]
