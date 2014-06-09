doubleMe x = x*2
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 then x else x*2
doubleSmallNumber' x = doubleSmallNumber x + 1

factorial :: Integer -> Integer
factorial x = product [1..x]

circumference :: Float -> Float
circumference r = 2 * pi * r

-- Isn't there a way to use the same implementation for different type declarations?
circumference' :: Double -> Double
circumference' r = 2 * pi * r
