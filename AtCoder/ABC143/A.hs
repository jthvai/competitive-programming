-- SPDX-License-Identifier: X11
-- 2020-12-12
-- Curtain (100pt)

f :: [Int] -> Int
f [a,b] = max (a - 2 * b) 0
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
