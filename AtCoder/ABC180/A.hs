-- 2020-10-21
-- box (100pt)

main :: IO ()
main = getLine >>= \x -> print . (\(n:a:b:_) -> n - a + b) .
                         map (read::String -> Int) . words $ x
