-- SPDX-License-Identifier: X11
-- 2020-11-19
-- Registration (100pt)

main :: IO ()
main = getContents >>= \x -> putStrLn . f . lines $ x
  where
    f :: [String] -> String
    f [s,t] = if s == take (length s) t then "Yes" else "No"
    f _     = error "Unhandled case"
