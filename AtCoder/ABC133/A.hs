-- SPDX-License-Identifier: X11
-- 2020-12-02
-- T or T (100pt)

f :: [Int] -> Int
f [n,a,b] = min (n * a) b
f _ = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
