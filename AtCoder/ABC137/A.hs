-- SPDX-License-Identifier: X11
-- 2020-12-01
-- +-x (100pt)

f :: [Int] -> Int
f [a,b] = maximum [a + b, a - b, a * b]
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
