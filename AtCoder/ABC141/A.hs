-- SPDX-License-Identifier: X11
-- 2020-12-04
-- Weather Prediction (100pt)

f :: String -> String
f "Sunny"  = "Cloudy"
f "Cloudy" = "Rainy"
f "Rainy"  = "Sunny"
f _        = error "Unhandled case"

main :: IO ()
main = getLine >>= \x -> putStrLn . f $ x
