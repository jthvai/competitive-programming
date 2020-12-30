-- SPDX-License-Identifier: X11
-- 2020-12-30
-- Airplane (100pt)

f :: [Int] -> Int
f [p,q,r] = minimum [p + q, p + r, q + r]
f _       = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
