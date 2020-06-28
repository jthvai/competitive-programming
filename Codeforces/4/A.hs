-- SPDX-License-Identifier: X11
-- 2020-06-19

module Main where

main :: IO ()
main = getLine >>= \x -> putStrLn $ let w = (read :: String -> Int) x
  in if even w && w > 2 then "YES" else "NO"
