-- SPDX-License-Identifier: X11
-- 2020-12-03
-- I miss you... (200pt)

main :: IO ()
main = getLine >>= \x -> putStrLn (replicate (length x) 'x')
