doubleMe x = x*2
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 then x else x*2
doubleSmallNumber' x = doubleSmallNumber x + 1

factorial :: Integral a => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

circumference :: Float -> Float
circumference r = 2 * pi * r

-- Isn't there a way to use the same implementation for different type declarations?
circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- all type cases may be named the same, but the return type case must be one 
-- that is matched. 
-- third :: (a, b, c) -> b -- fails as we ignore the first two items yet demand
-- that the returned value is of the type of the second element
-- third :: (a, b, c) -> c -- passes as the third item is returned as the type
-- of the third element's type
-- third :: (a, a, a) -> a -- works as we simply return the third item and if 
-- we meant to require a homogenous vectors as argument we'll be ok.
third :: (a, a, a) -> a
third (_, _, z) = z

third' :: (a, b, c) -> c
third' (_, _, z) = z
