-- SPDX-License-Identifier: X1  1
-- 2020-12-30
-- Redundant Redundancy (300pt)

import Data.List (foldl')

f :: Int -> Int
f n = foldl' lcm 1 [1..n] + 1

main :: IO ()
main = getLine >>= \x -> print . f $ (read x :: Int)
