-- SPDX-License-Identifier: X11
-- 2020-12-04
-- Odds of Oddness (100pt)

import Text.Printf (printf)

f :: Int -> Double
f n
  | even n    = 0.5
  | otherwise = (fromIntegral (n `div` 2 + 1) :: Double) /
                (fromIntegral n :: Double)

main :: IO ()
main = getLine >>= \x -> printf "%.7f\n" . f $ (read x :: Int)
