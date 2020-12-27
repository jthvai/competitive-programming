-- SPDX-License-Identifier: X11
-- 2020-12-28
-- Palindrome-philia (200pt)

f :: String -> Int
f s = let m     = length s `div` 2
          front = take m s
          back  = take m (reverse s)
      in g front back
  where
    g :: String -> String -> Int
    g (a:as) (b:bs)
      | a == b    = g as bs
      | otherwise = 1 + g as bs
    g [] [] = 0
    g _ _   = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f $ x
