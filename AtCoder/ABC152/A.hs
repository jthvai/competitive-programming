-- SPDX-License-Identifier: X11
-- 2020-12-01
-- AC or WA (100pt)

f :: [Int] -> String
f [n,m] = if n == m then "Yes" else "No"
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> putStrLn . f .
                         map (read :: String -> Int) . words $ x
