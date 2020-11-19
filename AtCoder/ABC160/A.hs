-- SPDX-License-Identifier: X11
-- 2020-11-19
-- Coffee (100pt)

main :: IO ()
main = getLine >>= \x -> putStrLn . f $ x
  where
    f :: String -> String
    f [_,_,a,b,c,d]
      | a == b && c == d = "Yes"
      | otherwise        = "No"
    f _ = error "Unhandled case"
