-- SPDX-License-Identifier: X11
-- 2020-12-22
-- Round Up the Mean (100pt)

f :: [Double] -> Int
f [a,b] = ceiling ((a + b) / 2)
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Double) . words $ x
