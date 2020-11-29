-- SPDX-License-Identifier: X11
-- 2020-11-30
-- Poor (100pt)

import Data.List (group,sort)

f :: [Int] -> String
f l
  | (length . group . sort $ l) == 2 = "Yes"
  | otherwise                        = "No"

main :: IO ()
main = getLine >>= \x -> putStrLn . f .
                         map (read :: String -> Int) . words $ x
