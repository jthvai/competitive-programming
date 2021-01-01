-- SPDX-License-Identifier: X11
-- 2021-01-01
-- Buffet (200pt)

f :: [[Int]] -> Int
f [_,ai,bi,ci] = g ai bi ci
  where
    g :: [Int] -> [Int] -> [Int] -> Int
    g (a:an:as) bs cs
      | an == a + 1 = (bs !! (a - 1)) + (cs !! (a - 1)) + g (an:as) bs cs
      | otherwise   = (bs !! (a - 1)) + g (an:as) bs cs
    g [a] bs _ = bs !! (a - 1)
    g [] _ _   = error "Unhandled case"
f _            = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
