-- SPDX-License-Identifier: X11
-- 2021-01-01
-- ATCoder (200pt)

f :: String -> Int
f = maximum . map length . g [[]]
  where
    g :: [String] -> String -> [String]
    g acc [] = acc
    g (a:acc) (s:ss)
      | s `elem` ['A','C','G','T'] = g ((s:a):acc) ss
      | otherwise                  = g ([]:a:acc) ss
    g _ _    = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> print . f $ x
