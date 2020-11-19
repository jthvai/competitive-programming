-- SPDX-License-Identifier: X11
-- 2020-11-19
-- Lucky 7 (100pt)

main :: IO ()
main = getLine >>= \x -> putStrLn $ if '7' `elem` x then "Yes" else "No"
