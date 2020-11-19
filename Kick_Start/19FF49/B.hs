-- SPDX-License-Identifier: X11
-- 2020-11-19
-- Boring Numbers (7pt, 12pt)

import Data.Char (digitToInt, intToDigit)

borsTo :: Int -> Int
borsTo n = let nS = show n
               e  = length nS - 1
               lS = '1' : replicate e '0'
           in fstBors e + range lS nS e 0
  where
    fstBors :: Int -> Int
    fstBors 0 = 0
    fstBors e = (5 :: Int)^e + fstBors (e - 1)

    range :: String -> String -> Int -> Int -> Int
    range l r e i
      | i > 0 && (odd . digitToInt $ l !! (i - 1)) /= odd i = 0
      | e == 0    = let lDig = digitToInt . last $ l
                        rDig = digitToInt . last $ r
                    in length .
                       filter (\x -> odd x == odd (i + 1)) $
                       [lDig..rDig]
      | otherwise = let lHalves = splitAt i l
                        lHead = fst lHalves
                        lTail = tail . snd $ lHalves
                        lDig  = digitToInt . head . snd $ lHalves
                        rDig  = digitToInt $ r !! i
                    in (length .
                        filter (\x -> odd x == odd (i + 1)) $
                        [lDig..rDig - 1]) * 5^e +
                       range (lHead ++ (intToDigit rDig : lTail)) r
                         (e - 1) (i + 1)

borsRange :: [Int] -> Int
borsRange [l, r] = borsTo r - borsTo (l - 1)
borsRange _      = error "Unhandled case"

main :: IO ()
main = getLine >>=
         \x -> doN 1 (read x :: Int) solve
  where
    doN :: Int -> Int -> (Int -> IO ()) -> IO ()
    doN _ 0 _ = return ()
    doN c n func = func c >>
                   doN (c + 1) (n - 1) func

    solve :: Int -> IO ()
    solve n = getLine >>=
                \x -> putStrLn ("Case #" ++ show n ++ ": " ++
                                (show . borsRange .
                                 map (read :: String -> Int) . words $ x))
