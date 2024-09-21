type Peg = String
type Move = (Peg, Peg)
hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi n src store dest
 | n <= 0     = []
 | otherwise  = hanoi (n-1) src dest store
                ++ [(src, dest)]
                ++ hanoi (n-1) store src dest
