-- SPDX-License-Identifier: X11
-- 2020-09-20
-- Plural Form (100pt)

main :: IO ()
main = getLine >>=
  \x -> putStrLn ((if last x == 's' then x ++ "e" else x) ++ "s")
