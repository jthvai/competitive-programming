-- SPDX-License-Identifier: X11
-- 2020-12-10
-- Rounding (100pt)

f :: [Int] -> Int
f [x,a] = if x < a then 0 else 10
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
