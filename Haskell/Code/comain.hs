module Main where

import Data.List
import Data.Char
import Control.Monad


cond p f g = (either f g) . (grd p)

grd p x = if p x then Left x else Right x


-- sandgod ---

divide = split (take =<< flip div 2 . length) (drop =<< flip div 2 . length)

{-
-- lukgod --

divide = split (uncurry take) (uncurry drop) . split ((flip div 2) . length)  id

:t split :: (a->b) -> (a->c) -> a -> (b,c)

ent o split ((flip div 2 . length)) id vai retornar um (Int,[a])
-}

char2int :: Char -> Int
char2int = cond (isLetter) (((+) 1) . abs . ((-) 65) . ord . toUpper) (const 0)

main = do
    interact $ unwords . filter ((==13) . sum . map char2int) . words


