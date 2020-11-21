-- SPDX-License-Identifier: X11
-- 2020-11-21
-- Station and Bus (100pt)

main :: IO ()
main = getLine >>= \x -> putStrLn (if all (== head x) (tail x)
                                     then "No" else "Yes")
