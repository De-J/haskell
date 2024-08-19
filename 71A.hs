abbr :: [Char] -> Int -> [Char]
abbr str len = if length (str) > len
                  then (head str) : (show $ ((length str) - 2)) ++ [last str]
                  else str

main :: IO()
main = do
  line <- getLine
  let n = (read line) :: Int
  -- `read` can return `Float`, `Int` etc. `:: Int` here is
  -- doing type coercion, saying that the result of `read`
  -- should be treated as `Int`.
  putStrLn $ show n
