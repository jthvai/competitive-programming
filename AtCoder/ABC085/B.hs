-- SPDX-License-Identifier: X11
-- 2021-01-01
-- Kagami Mochi (200pt)

import Data.List (nub)

main :: IO ()
main = getContents >>= \x -> print . length . nub . tail .
                             filter (not . null) . lines $ x
