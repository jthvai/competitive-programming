-- SPDX-License-Identifier: X11
-- 2021-01-02
-- Algae (200pt)

f :: [Int] -> [Int]
f [ra,da,xa] = reverse . init $ g ra da 2000 [xa]
  where
    g :: Int -> Int -> Int -> [Int] -> [Int]
    g _ _ 2010 acc    = acc
    g r d i acc@(x:_) = g r d (i + 1) ((r * x - d):acc)
    g _ _ _ []        = error "Unhandled case"
f _        = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> putStr . unlines . map show . f .
                         map (read :: String -> Int) . words $ x
