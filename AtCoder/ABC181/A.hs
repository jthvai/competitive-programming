-- SPDX-License-Identifier: X11
-- 2020-11-05
-- Heavy Rotation (100pt)

main :: IO ()
main = getLine >>= \x -> putStrLn (if even (read x :: Int)
                                     then "White" else "Black")
