myButLast :: [a] -> a
myButLast (x : _ : []) = x 
myButLast (_ : x) = myButLast x

-- >>> myButLast [1,2,3,4]
-- >>> myButLast ['x','y','z']
-- 3
-- 'y'
