-- SPDX-License-Identifier: X11
-- 2021-01-03
-- Strings (100pt)

main :: IO ()
main = getLine >>= \x -> putStrLn . concat . reverse . words $ x
