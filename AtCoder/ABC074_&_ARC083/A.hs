-- SPDX-License-Identifier: X11
-- 2020-12-29
-- Bichrome Cells (100pt)

f :: [Int] -> Int
f [n,a] = n * n - a
f _     = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (read :: String -> Int) .
                             filter (not . null) . lines $ x
