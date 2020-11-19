-- SPDX-License-Identifier: X11
-- 2020-11-19
-- Circle Pond (100pt)

main :: IO ()
main = getLine >>= \x -> print . (\y -> 2 * pi * y) $ (read x :: Double)
