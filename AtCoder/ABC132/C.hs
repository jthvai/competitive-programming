-- SPDX-License-Identifier: X11
-- 2021-01-03
-- Divide the Problems (300pt)

import Data.List (sort)

f :: [[Int]] -> Int
f [_,di] = g . sort $ di
  where
    g :: [Int] -> Int
    g list = let mid = length list `div` 2
                 a   = list !! (mid - 1)
                 b   = list !! mid
             in b - a
f _ = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
