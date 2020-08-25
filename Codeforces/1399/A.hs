-- SPDX-License-Identifier: X11
-- 2020-08-25
-- Remove Smallest

module Main where

import Data.List (sort)

solve :: (Num a, Ord a) => [a] -> String
solve = (\x -> if x then "YES\n" else "NO\n") . comp . sort
  where
    comp :: (Num a, Ord a) => [a] -> Bool
    comp (x : ys@(y : _)) = abs (x - y) <= 1 && comp ys
    comp _                = True

parse :: String -> String
parse = concatMap (solve . map (read :: String -> Int) . words) .
          subl [] . tail . lines
  where
    subl :: [a] -> [a] -> [a]
    subl l [_, y]       = reverse (y : l)
    subl l (_ : y : zs) = subl (y : l) zs
    subl _ _            = error "subl: Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStr . parse $ x
