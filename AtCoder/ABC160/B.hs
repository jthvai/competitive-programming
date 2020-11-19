-- SPDX-License-Identifier: X11
-- 2020-11-19
-- Golden Coins (200pt)

main :: IO ()
main = getLine >>= \x -> print .
                         (\y -> y `div` 500 * 1000 +
                                (y `mod` 500) `div` 5 * 5) $
                         (read x :: Int)
