-- SPDX-License-Identifier: X11
-- 2020-12-22
-- Buttons (100pt)

f :: [Int] -> Int
f [a,b] = max a b + max (max a b - 1) (min a b)
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
