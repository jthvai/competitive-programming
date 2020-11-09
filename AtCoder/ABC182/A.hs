-- SPDX-License-Identifier: X11
-- 2020-11-09 (Timed)
-- twiblr (100pt)

f :: [Int] -> Int
f [a,b] = 2 * a + 100 - b
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f . map (read :: String -> Int). words $ x
