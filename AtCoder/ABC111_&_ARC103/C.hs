-- SPDX-License-Identifier: X11
-- 2020-08-25
-- /\/\/\/ (300pt)

module Main where

import Data.List (group,sort,sortBy)

solve :: [Int] -> Int
solve = uncurry (+) . chop . split ([],[])
  where
    split :: ([a], [a]) -> [a] -> ([a], [a])
    split (xs, ys) [x,y]        = (x : xs, y : ys)
    split (xs, ys) (x : y : zs) = split (x : xs, y : ys) zs
    split _ _                   = error "split: Unhandled case"

    chop :: Ord a => ([a], [a]) -> (Int, Int)
    chop = mapP (length . concat) . initP .
             mapP (sortBy (\a b -> compare (length a) (length b)) .
                     group . sort)
      where
        initP :: Eq a => ([[a]], [[a]]) -> ([[a]], [[a]])
        initP p@(as, bs) = let (a, b) = mapP (head . last) p
                           in if a /= b
                                then (init as, init bs)
                                else let (x, y) = mapP (length . last) p
                                     in initFP ((x, as), (y, bs))
          where
            initFP :: ((Int, [[a]]), (Int, [[a]])) -> ([[a]], [[a]])
            initFP ((x, xs@[_]), (y, ys@[_]))
              | x > y     = ([], ys)
              | otherwise = (xs, [])
            initFP ((x, xs), (y, ys@[_]))
              | x > y     = (init xs, ys)
              | otherwise = (init2 xs, [])
            initFP ((x, xs@[_]), (y, ys))
              | x > y     = ([], init2 ys)
              | otherwise = (xs, init ys)
            initFP q@((x, xs), (y, ys))
              | x == y    = let (v, w) = mapP (length . last . init . snd) q
                            in if v > w
                                 then (init2 xs, init ys)
                                 else (init xs, init2 ys)
              | x > y     = (init xs, init2 ys)
              | otherwise = (init2 xs, init ys)

mapP :: (a -> b) -> (a, a) -> (b, b)
mapP f (a, b) = (f a, f b)

init2 :: [a] -> [a]
init2 l@[_] = l
init2 l     = last l : (init . init $ l)

parse :: String -> [Int]
parse = map (read :: String -> Int) . words . last . lines

main :: IO ()
main = getContents >>= \x -> print . solve . parse $ x
