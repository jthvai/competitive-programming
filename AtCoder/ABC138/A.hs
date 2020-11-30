-- SPDX-License-Identifier: X11
-- 2020-12-01
-- Red or Not (100pt)

f :: [String] -> String
f (i:s:_)
  | (read i :: Int) < 3200 = "red"
  | otherwise = s
f _ = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f . lines $ x
