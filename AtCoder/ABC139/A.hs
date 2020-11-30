-- SPDX-License-Identifier: X11
-- 2020-12-01
-- Tenki (100pt)

f :: [String] -> Int
f (s:t:_) = g s t
  where
    g :: String -> String -> Int
    g [] [] = 0
    g (a:as) (b:bs)
      | a == b    = 1 + g as bs
      | otherwise = g as bs
    g _ _   = error "Unhandled case"
f _       = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f . lines $ x
