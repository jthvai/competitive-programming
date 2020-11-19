-- SPDX-License-Identifier: X11
-- 2020-11-19
-- A?C (100pt)

main :: IO ()
main = getLine >>= \x -> putStrLn (if x == "ABC" then "ARC" else "ABC")
