-- SPDX-License-Identifier: X11
-- 2020-12-16
-- Changing a Character (100pt)

import Data.Char (toLower)

f :: [[String]] -> String
f [[_,k],[s]] = g (read k :: Int) s []
  where
    g :: Int -> String -> String -> String
    g _ [] acc     = reverse acc
    g 1 (x:xs) acc = reverse acc ++ [toLower x] ++ xs
    g n (x:xs) acc = g (n - 1) xs (x:acc)
f _ = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f .
                             map words . filter (not . null) . lines $ x
