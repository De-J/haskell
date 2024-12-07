-- Exercise 1
toDigits :: Integer -> [Integer]
toDigits x
  | x <= 0 = []
  | otherwise = toDigits (div x 10) ++ [mod x 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev x
  | x <= 0 = []
  | otherwise = mod x 10 : toDigitsRev (div x 10)

double :: Int -> Int
double x = x * 2

-- Exercise 2
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther (a : b : cs) = [a * 2, b] ++ doubleEveryOther cs

alternate :: Bool -> [Char] -> [Int]
alternate _ [] = []
alternate _ [c] = [read [c]]
alternate True (c : _ : cs) = read [c] : alternate True cs
alternate False (_ : c : cs) = read [c] : alternate False cs

sumList :: [Int] -> Int
sumList [] = 0
sumList (x : xs) = x + sumList xs

main :: IO ()
main = do
  let cardNumber = "3333000030303333"
  -- Without `$`, `alternate` could be composed
  -- only if a single argument is supplied.
  -- let x = sumList . map toDigits . map double $ alternate True cardNumber
  -- y = sumList $ alternate False cardNumber
  -- rem = mod (x+y) 10
  -- if rem == 0
  -- then putStrLn "Card number is valid."
  -- else putStrLn "Card number is invalid"
  putStrLn "Card number is valid."
