-- SPDX-License-Identifier: X11
-- 2020-12-24
-- Rating Goal (100pt)

f :: [Int] -> Int
f [r,g] = 2*g - r
f _     = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (read :: String -> Int) .
                             filter (not . null) . lines $ x
