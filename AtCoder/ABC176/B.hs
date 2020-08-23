-- SPDX-License-Identifier: X11
-- 2020-08-23
-- Multiple of 9

module Main where

import Data.Char (digitToInt)
import Data.List (foldl')

solve :: [Int] -> String
solve l = if foldl' (\x y -> (x + y) `mod` 9) 0 l == 0
            then "Yes"
            else "No"

parse :: String -> [Int]
parse = map digitToInt

main :: IO ()
main = getLine >>= \x -> putStrLn . solve . parse $ x
