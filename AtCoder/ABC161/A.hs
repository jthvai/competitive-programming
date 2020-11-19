-- SPDX-License-Identifier: X11
-- 2020-11-19
-- ABC Swap (100pt)

main :: IO ()
main = getLine >>= \x -> putStrLn . unwords . f . words $ x
  where
    f :: [a] -> [a]
    f [a,b,c] = [c,a,b]
    f _       = error "Unhandled case"
