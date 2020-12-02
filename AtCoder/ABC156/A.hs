-- SPDX-License-Identifier: X11
-- 2020-12-02
-- Beginner (100pt)

f :: [Int] -> Int
f [n,r]
  | n < 10    = r + 100 * (10 - n)
  | otherwise = r
f _ = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
