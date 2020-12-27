-- SPDX-License-Identifier: X11
-- 2020-12-27
-- Tax Increase (300pt)

import Data.List (find)
import Data.Maybe (fromMaybe)

f :: [Double] -> Int
f [a,b] = let root = ceiling ((a + b) / 0.18)
              tip = floor ((a + b + 2) / 0.18)
          in fromMaybe (-1) . find (g (round a) (round b)) $ [root..tip]
  where
    g :: Int -> Int -> Int -> Bool
    g u v x = let dX = fromIntegral x :: Double
                  uX = floor (dX * 0.08)
                  vX = floor (dX * 0.1)
              in u == uX && v == vX
f _ = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Double) . words $ x
