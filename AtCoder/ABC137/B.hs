-- SPDX-License-Identifier: X11
-- 2020-12-19
-- One Clue (200pt)

f :: [Int] -> [Int]
f [k,x] = [x - (k - 1)..x + (k - 1)]
f _     = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> putStrLn . unwords . map show . f .
                         map (read :: String -> Int) . words $ x
