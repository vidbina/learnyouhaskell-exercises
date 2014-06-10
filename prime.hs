-- I'm just goofing around with methods of calculating prime numbers
-- Let's assume I'm not aware of any existing methods to establish the
-- primality of a number
isPrime :: Integral a => a -> Bool
isPrime 0 = False
isPrime x = not (isDivisibleByAny x [2..(truncate (sqrt (fromIntegral x)))]) -- TODO: fix type problem

isDivisibleByAny :: Integral a => a -> [a] -> Bool
isDivisibleByAny 0 n = False
isDivisibleByAny x [] = False
isDivisibleByAny x n = if mod x (head n) == 0 then True else isDivisibleByAny x (tail n)
