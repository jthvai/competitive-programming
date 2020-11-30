-- SPDX-License-Identifier: X11
-- 2020-12-01
-- Password (100pt)

main :: IO ()
main = getLine >>= \x -> print ((read x :: Int) ^ (3 :: Int))
