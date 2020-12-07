-- SPDX-License-Identifier: X11
-- 2020-12-07
-- Round One (100pt)

f :: [Int] -> Int
f l = head [x | x <- [1..3], x `notElem` l]

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (read :: String -> Int) .
                             filter (not . null) .
                             lines $ x
