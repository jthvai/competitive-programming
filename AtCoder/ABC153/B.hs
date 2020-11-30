-- SPDX-License-Identifier: X11
-- 2020-12-01
-- Common Raccoon vs Monster (200pt)

f :: [[Int]] -> String
f ([h,_]:m:_)
  | sum m >= h = "Yes"
  | otherwise  = "No"
f _ = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f .
                             map (map (read :: String -> Int) . words) .
                             lines $ x
