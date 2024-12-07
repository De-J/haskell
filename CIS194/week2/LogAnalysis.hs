{-# OPTIONS_GHC -Wall #-}
module LogAnalysis where

import Log

-- Exercise 1
parseMessage :: String -> LogMessage
parseMessage str@(c:s) = case c of
                      'I' -> LogMessage Info
                        (read . head $ words s) (unwords . tail $ (words s))

                      'W' -> LogMessage Warning
                        (read . head $ words s) (unwords . tail $ words s)

                      'E' -> LogMessage (Error (read . head $ words s))
                        (read . head $ drop 1 (words s))
                        (unwords $ drop 2 (words s))
                      
                      _   -> Unknown str


parse :: String -> [LogMessage]
parse = map parseMessage . lines 
-- parse str = map parseMessage . lines $ str
