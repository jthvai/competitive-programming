-- SPDX-License-Identifier: X11
-- 2020-12-31
-- Caracal vs Monster (400pt)

f :: Int -> Int
f 1 = 1
f h = 1 + f (h `div` 2) * 2

main :: IO ()
main = getLine >>= \x -> print . f $ (read x :: Int)
