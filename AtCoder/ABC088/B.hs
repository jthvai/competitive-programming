-- SPDX-License-Identifier: X11
-- 2020-12-23
-- Card Game for Two (200pt)

import Data.List (sort)

f :: [[Int]] -> Int
f [_,ai] = g 0 0 . reverse . sort $ ai
  where
    g :: Int -> Int -> [Int] -> Int
    g at bt (a:b:xs) = g (at + a) (bt + b) xs
    g at bt [x]      = (at + x) - bt
    g at bt []       = at - bt
f _     = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
