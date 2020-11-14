-- SPDX-License-Identifier: X11
-- 2020-11-15
-- Substring (200pt)

import Data.List (tails)

f :: [String] -> Int
f [s,t]    = minimum . map (g t) $ tails s
  where
    g :: String -> String -> Int
    g (tc:ts) (sc:ss)
      | tc == sc = g ts ss
      | tc /= sc = 1 + g ts ss
    g (_:_) [] = 1005
    g _ _      = 0
f [s,t,""] = f [s,t]
f _        = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f . lines $ x
