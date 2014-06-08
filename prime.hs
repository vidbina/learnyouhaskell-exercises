-- I'm just goofing around with methods of calculating prime numbers
-- Let's assume I'm not away of any existing methods

-- The tedious method is obviously picking a number and subtracting until 1
-- to confirm that there are no other numbers that the number in question is
-- divisible by.
--
-- Steps:
--   Set number to x, dividend to n
--   If x is divisible by n return false else check if x is divisible by n-1
--   If n is 1 we've return True... we're at the bottom of the list and 
-- findPrimesTheTediousWay x = if x == 1 then True else (if mod x x-1 != 0 then False else findPrimesTheTediousWay )
isPrime1 x = not (f1 x [2..x-1])
isPrime2 x = not (f1 x [2..div x 2])
isPrime3 x = not (f1 x [2..(truncate (sqrt x))]) -- TODO: fix type problem
f1 x n = if length n == 0 then False else if mod x (head n) == 0 then True else f1 x (tail n)

