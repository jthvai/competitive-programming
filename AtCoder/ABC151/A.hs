-- SPDX-License-Identifier: X11
-- 2020-12-06
-- Next Alphabet (100pt)

f :: String -> String
f [c] = [succ c]
f _   = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> putStrLn . f $ x
