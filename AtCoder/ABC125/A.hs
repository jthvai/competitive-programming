-- SPDX-License-Identifier: X11
-- 2020-12-23
-- Biscuit Generator (100pt)

f :: [Int] -> Int
f [a,b,t] = t `div` a * b
f _       = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
