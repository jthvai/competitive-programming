-- SPDX-License-Identifier: X11
-- 2020-12-26
-- Go to School (300pt)

import Data.List (sortBy)

f :: [[Int]] -> [Int]
f [_,ai] = map fst . sortBy (\(_,a) (_,b) -> compare a b) . zip [1..] $ ai
f _      = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . unwords . map show . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
