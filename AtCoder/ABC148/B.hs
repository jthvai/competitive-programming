-- SPDX-License-Identifier: X11
-- 2020-12-25
-- Strings with the Same Length (200pt)

f :: [[String]] -> String
f [_,[sStr,tStr]] = g sStr tStr []
  where
    g :: String -> String -> String -> String
    g [] [] acc         = reverse acc
    g (s:ss) (t:ts) acc = g ss ts (t:s:acc)
    g _ _ _             = error "Unhandled case"
f _ = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f .
                             map words .
                             filter (not . null) . lines $ x
