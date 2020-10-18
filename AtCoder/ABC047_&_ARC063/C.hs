-- SPDX-License-Identifier: X11
-- 2020-10-18 (Unofficial Live)
-- 1D Reversi (300pt)

import Data.List (group)

f :: String -> Int
f = (\x -> x - 1) . length . group

main :: IO ()
main = getLine >>= \x -> print . f $ x
