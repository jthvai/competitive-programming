-- SPDX-License-Identifier: X11
-- 2020-12-02
-- Count Balls (200pt)

f :: [Int] -> Int
f [n,a,b] = let m = a + b
            in n `div` m * a + min a (n `mod` m)
f _ = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
