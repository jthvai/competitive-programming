-- SPDX-License-Identifier: X11
-- 2020-11-19
-- We Love Golf (100pt)

f :: [[Int]] -> String
f ([k]:[a,b]:_) = if b - b `mod` k >= a then "OK" else "NG"
f _             = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f .
                             map (map (read :: String -> Int) . words) .
                             lines $ x
