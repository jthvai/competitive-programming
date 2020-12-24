-- SPDX-License-Identifier: X11
-- 2020-12-25
-- Digits (200pt)

f :: [Double] -> Int
f [n,k] = ((floor :: Double -> Int) . logBase k $ n) + 1
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Double) . words $ x
