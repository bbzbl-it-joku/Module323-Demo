myLast :: [a] -> a
myLast (x : []) = x 
myLast (_ : x) = myLast x

-- >>> myLast [1,2,3,4]
-- >>> myLast ['x','y','z']
-- 4
-- 'z'
