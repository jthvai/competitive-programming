-- SPDX-License-Identifier: X11
-- 2020-12-23
-- Ferris Wheel (100pt)

f :: [Int] -> Int
f [a,b]
  | a >= 13          = b
  | a >= 6 && a < 13 = b `div` 2
  | a < 6            = 0
f _ = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
