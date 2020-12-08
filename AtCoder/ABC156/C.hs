-- SPDX-License-Identifier: X11
-- 2020-12-08
-- Rally (300pt)

f :: [[Int]] -> Int
f [_,xS] = minimum . map (tot xS) $ [1..100]
  where
    tot :: [Int] -> Int -> Int
    tot xs p = sum . map (stam p) $ xs
      where
        stam :: Int -> Int -> Int
        stam pI xi = (xi - pI) * (xi - pI)
f _     = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> print . f .
                             map (map (read :: String -> Int) . words) .
                             filter (not . null) . lines $ x
