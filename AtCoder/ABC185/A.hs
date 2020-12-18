main :: IO ()
main = getLine >>= \x -> print . minimum .
                         map (read :: String -> Int) . words $ x
