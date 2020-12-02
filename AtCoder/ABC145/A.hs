-- SPDX-License-Identifier: X11
-- 2020-12-02
-- Circle (100pt)

main :: IO ()
main = getLine >>= \x -> print . (\y -> y * y) $ (read x :: Int)
