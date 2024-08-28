 double :: Int -> Int
 double x = x * 2

 alternate :: Bool -> [Char] -> [Int]
 alternate _ [] = [] 
 alternate _ [c] = [read [c]]
 alternate True (c:_:cs) = (read [c]) : alternate True cs
 alternate False (_:c:cs) = (read [c]) : alternate False cs
 
 doubleIntArr :: [Int] -> [Int]
 doubleIntArr [] = []
 doubleIntArr (x:xs) = (2*x) : doubleIntArr xs

 addDigits :: Int -> Int
 addDigits x
  | x <= 9    = x
  | otherwise = (mod x 10) + addDigits (div x 10)

 main :: IO()
 main = do
   let cardNumber = "3333000030303333"
   print $ addDigits (1000000)
   print $ alternate True cardNumber
   print $ alternate False cardNumber

