-- SPDX-License-Identifier: X11
-- 2020-12-27
-- Harmony (100pt)

f :: [Int] -> String
f [x,y] = let ans = g x y
          in maybe "IMPOSSIBLE" show ans
  where
    g :: Int -> Int -> Maybe Int
    g a b
      | even (a + b) = Just ((a + b) `div` 2)
      | otherwise    = Nothing
f _ = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> putStrLn . f .
                         map (read :: String -> Int) . words $ x
