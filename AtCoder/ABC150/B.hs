-- SPDX-License-Identifier: X11
-- 2020-12-31
-- Count ABC (200pt)

f :: String -> Int
f ('A':'B':'C':xs) = 1 + f xs
f []               = 0
f (_:xs)           = f xs

main :: IO ()
main = getContents >>= \x -> print . f . last .
                             filter (not . null) . lines $ x
