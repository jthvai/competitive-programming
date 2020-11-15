-- SPDX-License-Identifier: X11
-- 2020-11-15 (Live)
-- ReLU (100pt)

f :: Int -> Int
f x
  | x >= 0    = x
  | x < 0     = 0
  | otherwise = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f . (read :: String -> Int) $ x
