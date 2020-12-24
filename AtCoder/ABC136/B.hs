-- SPDX-License-Identifier: X11
-- 2020-12-25
-- Uneven Numbers (200pt)

f :: Int -> Int
f n = length . filter (odd . length . show) $ [1..n]

main :: IO ()
main = getLine >>= \x -> print . f $ (read x :: Int)
