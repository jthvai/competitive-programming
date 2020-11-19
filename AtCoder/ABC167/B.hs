-- SPDX-License-Identifier: X11
-- 2020-11-19
-- Easy Linear Programming (200pt)

f :: [Int] -> Int
f [a,b,_,k]
  | k < a     = k
  | k - a < b = a
  | otherwise = a - (k - (a + b))
f _         = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int). words $ x
