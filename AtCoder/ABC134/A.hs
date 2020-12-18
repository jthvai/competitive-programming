-- SPDX-License-Identifier: X11
-- 2020-12-18
-- Dodecagon (100pt)

f :: Int -> Int
f a = 3 * a * a

main :: IO ()
main = getLine >>= \x -> print . f $ (read x :: Int)
