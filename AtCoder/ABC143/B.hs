-- SPDX-License-Identifier: X11
-- 2020-12-29
-- TAKOYAKI FESTIVAL 2019 (200pt)

genPairs :: [a] -> [(a,a)]
genPairs []     = []
genPairs (x:xs) = [(x,y) | y <- xs] ++ genPairs xs

f :: [[Int]] -> Int
f [_,di] = sum . map (uncurry (*)) . genPairs $ di
f _      = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
