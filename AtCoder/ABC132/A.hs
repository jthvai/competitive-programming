-- SPDX-License-Identifier: X11
-- 2020-12-30
-- Fifty-Fifty (100pt)

import Data.List (group,sort)

f :: String -> String
f s = if (map length . group . sort $ s) == [2,2] then "Yes" else "No"

main :: IO ()
main = getLine >>= \x -> putStrLn . f $ x
