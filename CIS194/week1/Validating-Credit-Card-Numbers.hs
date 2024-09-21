double :: Int -> Int
double x = x * 2

alternate :: Bool -> [Char] -> [Int]
alternate _ [] = []
alternate _ [c] = [read [c]]
alternate True (c:_:cs) = (read [c]) : alternate True cs
alternate False (_:c:cs) = (read [c]) : alternate False cs

addDigits :: Int -> Int
addDigits x
 | x <= 9    = x
 | otherwise = (mod x 10) + addDigits (div x 10)

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

main :: IO()
main = do
  let cardNumber = "3333000030303333"
  -- Without `$`, `alternate` could be composed
  -- only if a single argument is supplied.
  let x = sumList . map addDigits . map double $ alternate True cardNumber
      y = sumList $ alternate False cardNumber
      rem = mod (x+y) 10
  if rem == 0
    then putStrLn "Card number is valid."
    else putStrLn "Card number is invalid"

