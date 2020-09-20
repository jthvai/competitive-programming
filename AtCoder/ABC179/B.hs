-- SPDX-License-Identifier: X11
-- 2020-09-20
-- Go to Jail (200pt)

f :: [[String]] -> String
f l = if g 0 l then "Yes" else "No"
  where
    g :: Int -> [[String]] -> Bool
    g 3 _  = True
    g _ [] = False
    g c ([a, b] : xs)
      | a == b    = g (c + 1) xs
      | otherwise = g 0 xs
    g _ _  = error "f.g: Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f . map words . tail . lines $ x
