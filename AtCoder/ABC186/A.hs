-- SPDX-License-Identifier: X11
-- 2020-12-22
-- Brick (100pt)

f :: [Int] -> Int
f [n,w] = n `div` w
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
