-- SPDX-License-Identifier: X11
-- 2020-12-01
-- Maximum Volume (300pt)

import Text.Printf (printf)

f :: Double -> Double
f l = (l / (3 :: Double)) ^ (3 :: Int)

main :: IO ()
main = getLine >>= \x -> printf "%.7f\n" . f $ (read x :: Double)
