-- SPDX-License-Identifier: X11
-- 2020-12-28
-- Distinct or Not (300pt)

import Data.List (sort)

f :: [[Int]] -> String
f [_,ai] = if g . sort $ ai then "YES" else "NO"
  where
    g :: Eq a => [a] -> Bool
    g (a:b:bs)
      | a == b    = False
      | otherwise = g (b:bs)
    g _ = True
f _      = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
