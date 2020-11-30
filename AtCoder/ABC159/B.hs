-- SPDX-License-Identifier: X11
-- 2020-12-01
-- String Palindrome (200pt)

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

f :: String -> String
f s = let n    = length s
          fstH = take (n `div` 2) s
          sndH = drop (n `div` 2 + 1) s
      in if isPalindrome s && isPalindrome fstH && isPalindrome sndH
           then "Yes" else "No"

main :: IO ()
main = getLine >>= \x -> putStrLn . f $ x
