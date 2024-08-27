-- Typevars
notyp :: a -> a
notyp x = x 

mult :: Num a => a -> a -> a
mult x y = x * y