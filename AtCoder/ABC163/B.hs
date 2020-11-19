-- SPDX-License-Identifier: X11
-- 2020-11-19
-- Homework (200pt)

f :: [[Int]] -> Int
f ([n,_]:a:_) = let s = sum a
                    d = n - s
                in if d < 0 then -1 else d
f _           = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (map (read :: String -> Int) . words) .
                             lines $ x
