-- SPDX-License-Identifier: X11
-- 2020-11-30
-- 81 (200pt)

f :: Int -> String
f n
  | any (\x -> n `mod` x == 0 && n `div` x <= 9) [1..9] = "Yes"
  | otherwise = "No"

main :: IO ()
main = getLine >>= \x -> putStrLn . f $ (read x :: Int)
