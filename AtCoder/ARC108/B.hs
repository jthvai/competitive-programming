-- SPDX-License-Identifier: X11
-- 2020-11-22
-- Abbreviate Fox (400pt)

g :: String -> String -> Int
g ('x':'o':'f':ts) ss = g ts ss
g ts (c:ss)           = g (c:ts) ss
g ts []               = length ts

f :: [String] -> Int
f (_:s:_) = g [] s
f _       = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f . lines $ x
