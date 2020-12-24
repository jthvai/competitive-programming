-- SPDX-License-Identifier: X11
-- 2020-12-24
-- Alchemist (300pt)

import Data.List (sort)
import Text.Printf (printf)

f :: [[Int]] -> Double
f [_,ai] = g . sort $ ai
  where
    g :: [Int] -> Double
    g as@(a:b:cs) = let num = a + b +
                              sum (zipWith (\x y -> 2^x * y)
                                           [(1::Int)..] cs)
                        den = 2^(length as - 1)
                    in (fromIntegral num::Double) / den
    g _ = error "Unhandled case"
f _      = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> printf "%.6f\n" . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
