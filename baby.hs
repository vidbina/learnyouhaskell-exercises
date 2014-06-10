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

head' :: [a] -> a
head' [] = error "Can't do read the head of an empty list, bozo!"
head' (x:_) = x -- NOTE: It's not a vector parenthesis are here to set the 
-- bounds for an argument
-- x:a is alread a list so [x:a] would be a list of a list?
-- (x:a) is simply x:a but the paremeters set the bounds for the parser to work 
-- with

firstLetter :: String -> String
firstLetter "" = error "Empty string"
firstLetter all@(x:xs) = [x] ++ " of " ++ all ++ ", hahaha!"

bmiTell :: Double -> Double -> String
bmiTell weight height
-- STUDY: would there be a device to prevent me from repeating part of the 
-- expression in the guard conditions? It is (weight/height^2) but if I have 
-- 100 guards and I need to change the condition I'll have to change 100
-- expressions
  | (weight/height^2) < 18.5 = "You underweight feather... gain some weight"
  | (weight/height^2) < 25 = "The say your normal. I'm sure there is still something off about you. Assymetric facial features perhaps? F*-ed up toes?"
  | (weight/height^2) < 30 = "You fat slob. Hope you are happy with yourself you little fat f*"
  | otherwise = "Godzillllaaaaaa!!!"

max' :: Ord a => a -> a -> a
max' a b
  | a >= b = a
  | otherwise = b

myCompare :: Ord a => a -> a -> Ordering
a `myCompare` b
    | a == b = EQ
    | a < b = LT
    | otherwise = GT
