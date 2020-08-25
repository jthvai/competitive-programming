-- SPDX-License-Identifier: X11
-- 2020-08-23
-- Takoyaki (100pt)

module Main where

solve :: [Int] -> Int
solve [n,x,t] = (if n `mod` x == 0
                   then n `div` x
                   else n `div` x + 1) * t
solve _ = error "Failure parsing inputs"

parse :: String -> [Int]
parse = map (read :: String -> Int) . words

main :: IO ()
main = getContents >>= \x -> print . solve . parse $ x
