-- SPDX-License-Identifier: X11
-- 2020-11-28
-- Duplex Printing (100pt)

main :: IO ()
main = getLine >>= \x -> print . (ceiling :: Double -> Int) $
                           (read x :: Double) / 2
