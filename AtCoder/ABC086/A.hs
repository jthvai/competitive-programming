-- SPDX-License-Identifier: X11
-- 2020-11-19
-- Product (100pt)

f :: [Int] -> String
f [a,b] = if odd a && odd b then "Odd" else "Even"
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> putStrLn . f .
                         map (read :: String -> Int) . words $ x
