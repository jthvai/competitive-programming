-- SPDX-License-Identifier: X11
-- 2020-12-14
-- Roller Coaster (200pt)

import Data.List (sort)

f :: [[Int]] -> Int
f [[_,k],h] = length . dropWhile (<k) . sort $ h
f _ = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
