-- SPDX-License-Identifier: X11
-- 2020-11-15
-- To 3 (300pt)

import Data.Char (digitToInt)

f :: [Int] -> Int
f list = h list (g list)
  where
    h :: [Int] -> Int -> Int
    h _ (-1) = -1
    h l a    = length l - a

    g :: [Int] -> Int
    g l
      | sum l `mod` 3 == 0 = length l
      | sum l `mod` 3 == 1 &&
          any (\x -> x `mod` 3 == 1) l &&
          length l > 1 ||
        sum l `mod` 3 == 2 &&
          any (\x -> x `mod` 3 == 2) l &&
          length l > 1 = length l - 1
      | sum l `mod` 3 == 1 &&
          (length . filter (\x -> x `mod` 3 == 2) $ l) >= 2 &&
          length l > 2 ||
        sum l `mod` 3 == 2 &&
          (length . filter (\x -> x `mod` 3 == 1) $ l) >= 2 &&
          length l > 2 = length l - 2
      | otherwise      = -1

main :: IO ()
main = getLine >>= \x -> print . f . map digitToInt $ x
