-- SPDX-License-Identifier: X11
-- 2020-12-02
-- Papers, Please (200pt)

f :: [[Int]] -> String
f (_:as:_) = if g as then "APPROVED" else "DENIED"
  where
    g :: [Int] -> Bool
    g [] = True
    g (x:xs)
      | even x && x `mod` 3 /= 0 && x `mod` 5 /= 0 = False
      | otherwise = g xs
f _ = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f .
                             map (map (read :: String -> Int) . words) .
                             lines $ x
