-- SPDX-License-Identifier: X11
-- 2020-12-11
-- Comparing Strings (200pt)

import Data.Char (intToDigit)

f :: [Int] -> String
f [a,b]
  | a < b     = replicate b (intToDigit a)
  | otherwise = replicate a (intToDigit b)
f _ = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> putStrLn . f .
                         map (read :: String -> Int) . words $ x
