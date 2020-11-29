-- SPDX-License-Identifier: X11
-- 2020-11-30
-- 9x9 (100pt)

f :: [Int] -> Int
f [a,b]
  | a <= 9 && b <= 9 = a * b
  | otherwise        = -1
f _ = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
