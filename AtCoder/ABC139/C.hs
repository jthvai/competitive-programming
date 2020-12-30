-- SPDX-License-Identifier: X11
-- 2020-12-30
-- Lower (300pt)

groupSubSeqs :: Ord a => [[a]] -> [a] -> [[a]]
groupSubSeqs acc [] = acc
groupSubSeqs (a:acc) (x:xs)
  | null a      = groupSubSeqs ([x]:acc) xs
  | x <= head a = groupSubSeqs ((x:a):acc) xs
  | otherwise   = groupSubSeqs ([]:a:acc) (x:xs)
groupSubSeqs _ _    = error "Unhandled case"

f :: [[Int]] -> Int
f [_,hi] = (maximum . map length . groupSubSeqs [[]] $ hi) - 1
f _      = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
