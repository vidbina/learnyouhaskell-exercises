lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN"
lucky 13 = "UNLUCKY"
-- NOTE: had to declare known values before vars, because eval fails to
-- deal with constants after the var pattern has been processed
lucky x = "Out of luck"
