-- SPDX-License-Identifier: X11
-- 2020-12-03
-- Remaining Balls (100pt)

f :: [[String]] -> [String]
f ([ss,_]:[as,bs]:[us]:_) = let a = read as :: Int
                                b = read bs :: Int
                             in map show (g ss a b us)
  where
    g :: String -> Int -> Int -> String -> [Int]
    g s a b u
      | s == u    = [a - 1, b]
      | otherwise = [a, b - 1]
f _ = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . unwords . f . map words . lines $ x
