-- SPDX-License-Identifier: X11
-- 2020-10-21
-- Plus Minus (100pt)

f :: [Int] -> [Int]
f [a,b] = [(a + b) `div` 2, a - (a + b) `div` 2]
f _     = error "f: Unhandled case"

main :: IO ()
main = getLine >>= \x -> putStrLn . unwords . map show . f .
                         map (read::String -> Int) . words $ x
