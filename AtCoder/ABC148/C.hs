-- SPDX-License-Identifier: X11
-- 2021-01-02
-- Snack (300pt)

f :: [Int] -> Int
f [a,b] = lcm a b
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
