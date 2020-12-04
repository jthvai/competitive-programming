-- SPDX-License-Identifier: X11
-- 2020-12-04
-- Apple Pie (100pt)

f :: [Int] -> Int
f [a,p] = (3 * a + p) `div` 2
f _ = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
