-- SPDX-License-Identifier: X11
-- 2020-11-19
-- Sheep and Wolves (100pt)

main :: IO ()
main = getLine >>= \x -> putStrLn . f .
                         map (read :: String -> Int) . words $ x
  where
    f :: [Int] -> String
    f [s,w] = (if w >= s then "un" else "") ++ "safe"
    f _     = error "Unhandled case"
