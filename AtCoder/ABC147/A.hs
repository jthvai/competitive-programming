-- SPDX-License-Identifier: X11
-- 2020-12-03
-- Blackjack (100pt)

f :: [Int] -> String
f a
  | sum a >= 22 = "bust"
  | otherwise   = "win"

main :: IO ()
main = getLine >>= \x -> putStrLn . f .
                         map (read :: String -> Int) . words $ x
