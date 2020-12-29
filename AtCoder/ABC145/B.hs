-- SPDX-License-Identifier: X11
-- 2020-12-29
-- Echo (200pt)

f :: [String] -> String
f [n,s] = let r = read n
              h = r `div` 2
          in if even r && take h s == drop h s then "Yes" else "No"
f _     = error "Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f .
                             filter (not . null) . lines $ x
