-- SPDX-License-Identifier: X11
-- 2020-12-05
-- Transfer (100pt)

f :: [Int] -> Int
f [a,b,c] = let ans = c - (a - b)
            in if ans < 0 then 0 else ans
f _       = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f .
                         map (read :: String -> Int) . words $ x
