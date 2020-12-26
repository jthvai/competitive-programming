-- SPDX-License-Identifier: X11
-- 2020-12-26
-- Achieve the Goal (200pt)

f :: [[Int]] -> Int
f [[n,k,m],ai] = g (m * n - sum ai) k
  where
    g :: Int -> Int -> Int
    g final maxscore
      | final < 0        = 0
      | final > maxscore = -1
      | otherwise        = final
f _            = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
