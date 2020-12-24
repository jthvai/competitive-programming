-- SPDX-License-Identifier: X11
-- 2020-12-24
-- Can't Wait for Holiday (100pt)

f :: String -> Int
f "SUN" = 7
f "MON" = 6
f "TUE" = 5
f "WED" = 4
f "THU" = 3
f "FRI" = 2
f "SAT" = 1
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f $ x
