-- SPDX-License-Identifier: X11
-- 2020-12-01
-- Power Socket (200pt)

f :: [Double] -> Int
f [a,b] = ceiling ((b - 1) / (a - 1)) :: Int
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Double) . words $ x
