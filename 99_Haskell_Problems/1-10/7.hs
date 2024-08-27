data NestedList a = Elem a | List [NestedList a]

flatten (Elem x) = [x]
flatten (List (x : xs)) = flatten x ++ flatten (List xs)
flatten (List []) = []

-- >>> flatten (Elem 5)
-- >>> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
-- >>> flatten (List [])
-- [5]
-- [1,2,3,4,5]
-- []
