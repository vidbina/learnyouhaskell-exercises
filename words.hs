vowels = "aeiouy"
consonants = "bcdfghjklmnpqrstvwxz"
-- bogus builds a word by alternating between vowels and consonants
-- Principle:
  -- at index i, the i-th consonant is picked up if i is odd
  -- at index i, the i-th vowel is picked up if i is even
  -- repeat until we satisfy the length
--
-- len: the length of the word
-- offset: the index of both the constant or vowel cycles to begin with
-- delta: the index difference between the consonants and the vowels
bogus len offset delta = [ if odd x then (cycle consonants) !! x else (cycle vowels) !! (x + delta) | x <- [(0+offset)..(len-1+offset)] ]
