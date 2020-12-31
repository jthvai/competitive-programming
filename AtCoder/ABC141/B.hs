-- SPDX-License-Identifier: X11
-- 2020-12-31
-- Tap Dance (200pt)

splitList :: [(Int,a)] -> ([a],[a])
splitList xs = ([x | (i,x) <- xs, odd i], [x | (i,x) <- xs, even i])

f :: String -> String
f s = if g . splitList . zip [(1::Int)..] $ s then "Yes" else "No"
  where
    g :: (String,String) -> Bool
    g (a,b) = 'L' `notElem` a && 'R' `notElem` b

main :: IO ()
main = getLine >>= \x -> putStrLn . f $ x
