-- SPDX-License-Identifier: X11
-- 2020-12-13
-- Security (100pt)

import Data.List (group)

f :: String -> String
f s = if 1 < (maximum . map length . group $ s) then "Bad" else "Good"

main :: IO ()
main = getLine >>= \x -> putStrLn . f $ x
