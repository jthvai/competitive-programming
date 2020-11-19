-- SPDX-License-Identifier: X11
-- 2020-11-19
-- Battle (200pt)

f :: [Double] -> String
f [a,b,c,d] = if (ceiling (c / b) :: Int) <= (ceiling (a / d) :: Int)
                then "Yes" else "No"
f _         = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> putStrLn . f .
                         map (read :: String -> Double) . words $ x
