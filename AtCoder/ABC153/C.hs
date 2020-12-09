-- SPDX-License-Identifier: X11
-- 2020-12-09
-- Fennec vs Monster (300pt)

import Data.List (sort)

f :: [[Int]] -> Int
f [[n,k],h] = sum (take (n - k) (sort h))
f _         = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
