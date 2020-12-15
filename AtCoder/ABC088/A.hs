-- SPDX-License-Identifier: X11
-- 2020-12-15
-- Infinite Coins (100pt)

f :: [Int] -> String
f [n,a] = if n `mod` 500 > a then "No" else "Yes"
f _     = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f .
                             map (read :: String -> Int) .
                             filter (not . null) . lines $ x
