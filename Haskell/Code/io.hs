module LearningIO where

import Data.List
import Data.Char
import Control.Monad

{-
	Actions are sequenced using an operator that has a rather cryptic name: >>= (or `bind').
	Instead of using this operator directly, we choose some syntactic sugar, the do notation,
	to hide these sequencing operators under a syntax resembling more conventional languages.
	The do notation can be trivially expanded to >>=.
-}

todoList :: [IO ()]
todoList = [putChar 'a',
            do putChar 'b'
               putChar 'c',
               putStrLn(""),
            do c <- getChar
               putChar c,
               putStrLn("")]


chario :: Char -> IO ()
chario c = putStr ("c" ++ "\n") -- putStrLn

ready :: IO Bool
ready = do
		c <- getChar
		return (c=='y') -- just c=='y' doesn't work because the second statement in the `do' is just a boolean value, not an action.

{-
getl     :: IO String
getl     =  do c <- getChar
				if (c == '\n')
					then return ""
              		else
              			do l <- getl
                		return (c:l)
-}

-- a >> b >> c é a msm coisa que ter do a .. b .. c
seqx        :: [IO ()] -> IO ()
seqx        =  foldr (>>) (return ())

putSt :: String -> IO ()
putSt = seqx . map putChar . (flip (++) "\n")

