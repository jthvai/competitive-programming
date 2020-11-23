-- SPDX-License-Identifier: X11
-- 2020-11-24
-- Replacing Integer (300pt)

f :: [Int] -> Int
f (n:k:_) = let m = n `mod` k in min m (k - m)
f _       = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
