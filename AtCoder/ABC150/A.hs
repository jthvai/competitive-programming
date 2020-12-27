-- SPDX-License-Identifier: X11
-- 2020-12-28
-- 500 Yen Coins (100pt)

f :: [Int] -> String
f [k,x] = if k * 500 >= x then "Yes" else "No"
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> putStrLn . f .
                         map (read :: String -> Int) . words $ x
