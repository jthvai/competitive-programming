-- SPDX-License-Identifier: X11
-- 2020-09-23
-- ... (Triple Dots) (200pt)

f :: [String] -> String
f [n, s] = g (read n :: Int) s []
  where
    g :: Int -> String -> String -> String
    g _ [] acc       = reverse acc
    g 0 _ acc        = reverse ("..." ++ acc)
    g m (t : ts) acc = g (m - 1) ts (t : acc)
f _      = error "f: Unhandled case"

main :: IO ()
main = getContents >>= \x -> putStrLn . f . lines $ x
