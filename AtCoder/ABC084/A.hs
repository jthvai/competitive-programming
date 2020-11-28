-- SPDX-License-Identifier: X11
-- 2020-11-29
-- New Year (100pt)

main :: IO ()
main = getLine >>= \x -> print (24 + 24 - read x :: Int)
