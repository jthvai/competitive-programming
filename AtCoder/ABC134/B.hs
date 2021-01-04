-- SPDX-License-Identifier: X11
-- 2021-01-04
-- Golden Apple (200pt)

f :: [Double] -> Int
f [n,d] = ceiling (n / (2 * d + 1))
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Double) . words $ x
