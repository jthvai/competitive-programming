-- SPDX-License-Identifier: X11
-- 2021-01-02
-- Slimes (300pt)

import Data.List (group)

f :: [String] -> Int
f [_,s] = length . group $ s
f _     = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             filter (not . null) . lines $ x
