abbr :: [Char] -> [Char]
abbr str = if length (str) > 10
                  then (head str) : (show $ ((length str) - 2)) ++ [last str]
                  else str

main :: IO()
main = interact $ unlines . map abbr . tail . lines
