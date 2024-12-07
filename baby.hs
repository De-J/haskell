doubleMe x = x + x

isEven x =
  if mod x 2 == 0
    then True
    else False

-- Apparently GHCI throws errors if you use tabs over spaces.
-- Also, you need to use `"` instead of `'` for strings.

data SomeType
  = Shoe
  | Ship
  | SealingWax
  deriving (Show)

-- Without using `deriving Show` you cannot use the `show`
-- function on `SomeType` data type.

data Foo = Foo String Int
  deriving (Show)

-- `@` is used to extract values inside the `Foo` data type.
func :: Foo -> String
func f@(Foo str _) = "Pattern matching is " ++ str

shoe :: SomeType
shoe = Shoe

john :: Foo
john = Foo "cool" 23

main :: IO ()
main = do
  print shoe
  putStrLn $ func john

-- `$` usage: `f $ x` is equivalent to `f(x)`
-- So, `putStrLn $ show (isEven 4)` is the same
-- as `putStrLn (show (isEven 4))`
