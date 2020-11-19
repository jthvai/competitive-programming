-- SPDX-License-Identifier: X11
-- 2020-11-19
-- FizzBuzz Sum (200pt)

main :: IO ()
main = getLine >>= \x -> print . sum .
                         filter (\y -> y `mod` 3 /= 0 && y `mod` 5 /= 0) $
                         [1..read x :: Int]
