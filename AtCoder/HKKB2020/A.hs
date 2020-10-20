-- SPDX-License-Identifier: X11
-- 2020-10-21
-- Keyboard (100pt)

import Data.Char (toUpper)

f :: [String] -> String
f [yn, abc]
  | head yn == 'Y' = [toUpper . head $ abc]
  | otherwise      = [head abc]
f _ = error "f: Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f . lines $ x
