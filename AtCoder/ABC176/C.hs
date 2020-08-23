-- SPDX-License-Identifier: X11
-- 2020-08-23
-- Step

module Main where

solve :: [Integer] -> Integer
solve = h 0
  where
    h :: Integer -> [Integer] -> Integer
    h a []           = a
    h a [_]          = a
    h a (x : y : ys) = h (a + if x - y > 0 then x - y else 0)
                         ((y + if x - y > 0 then x - y else 0) : ys)

parse :: String -> [Integer]
parse = map (read :: String -> Integer) . words . last . lines

main :: IO ()
main = getContents >>= \x -> print . solve . parse $ x
