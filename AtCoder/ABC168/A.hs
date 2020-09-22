-- SPDX-License-Identifier: X11
-- 2020-09-22
-- ∴ (Therefore) (100pt)

f :: Char -> String
f x = let h = "24579"
          p = "0168"
      in g x h p : "on"
  where
    g :: Char -> String -> String -> Char
    g y h p
      | y `elem` h = 'h'
      | y `elem` p = 'p'
      | otherwise  = 'b'

main :: IO ()
main = getLine >>= \x -> putStrLn . f . last $ x
