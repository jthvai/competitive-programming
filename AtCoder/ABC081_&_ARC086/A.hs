-- SPDX-License-Identifier: X11
-- 2020-11-26
-- Placing Marbles (100pt)

import Data.Char (digitToInt)

main :: IO ()
main = getLine >>= \x -> print . sum . map digitToInt $ x
