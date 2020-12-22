-- SPDX-License-Identifier: X11
-- 2020-12-22
-- Blocks on Grid (200pt)

f :: [Int] -> Int
f l = sum l - length l * minimum l

main :: IO ()
main = getContents >>= \x -> print . f . concat . tail .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
