doubleMe x = x + x

isEven x = if mod x 2 == 0
                  then True
                  else False

-- Apparently GHCI throws errors if you use tabs over spaces.
-- Also, you need to use `"` instead of `'` for strings.
