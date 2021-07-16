module LearningH where

import Data.List
import Data.Char
import Control.Monad


cond p f g = (either f g) . (grd p)

grd p x = if p x then Left x else Right x

--------

ll :: [Int] -> Int
ll l = foldr (\x xs -> 1 + xs) 0 l

ll' :: [Int] -> Int
ll' = foldl (\xs x -> 1 + xs) 0

rev' :: [Int] -> [Int]
rev' = foldr (\x xs -> xs ++ [x]) []

rev'' :: [Int] -> [Int]
rev'' = foldl (\xs x -> x : xs) []

rev :: [Int] -> [Int]
rev = foldl (flip (:)) []


myelem :: Eq a => a -> [a] -> Bool
myelem x = any (==x)


getweak :: [Int] -> Int
getweak [a] = a
getweak (x:x1:xs) | (x> x1) 	 = getweak (x1:xs)
			   	  |	otherwise 	 = getweak (x:xs)


remove1 :: Int -> [Int] -> [Int]
remove1 _ [] = []
remove1 a (x:xs) | a == x = xs
				 | otherwise = x : remove1 a xs



ord' :: [Int] -> [Int]
ord'	[] = []
ord' l = getweak l : ord' ((remove1 (getweak l) l))

-----------

inte :: Eq a => [a] -> [a] -> [a]
inte l1 l2 = foldr (\x xs -> if x `elem` l2 then x : xs else xs) [] l1

pois :: [Int] -> [(Int,Int)]
pois l1 = nub $ foldr (\x xs -> (length $ (filter (==x) l1), x) : xs) [] l1

f :: [Int] -> [(Int,Int)]
f = foldr (\x acc -> (head x, length x) : acc) [] . group . sort

grps2 :: [Int] -> [[Int]]
grps2 l1 = nub $ foldr (\x xs -> replicate (length $ (filter (==x) l1)) x : xs) [] l1


{-
ord1 :: [Int] -> [Int]
ord1 l = foldr (\x xs -> if xs == [] then minimum l : xs else minimum (delete (minimum l) l) : xs) [] l
-}

ord1 :: (Ord a) => [a] -> [a]
ord1 l@(h:t) =  foldr ordaux [] l where
					ordaux x [] = [x]
			  		ordaux x l1@(y:ys) = if x < y then x:y:ys else y:ordaux x ys

insert' :: Ord a => a -> [a] -> [a]
insert' x [] = [x]
insert' x (y:ys)
  | x < y     = x : y : ys
  | otherwise = y : insert' x ys

insertionSort' :: (Ord a) => [a] -> [a]
insertionSort' = foldr insert' []


myt :: Int -> [a] -> [a]
myt n = foldl (\c x -> if length c < n then c ++ [x] else c) []

myd :: Eq a => Int -> [a] -> [a]
myd n l = (\\) l (take n l)


sumquad :: Int -> Int
sumquad n = foldl (\x xs -> xs^2 + x) 0 [0..n]

llenght :: [Int] -> Int
llenght = foldr (\x xs -> 1 + xs) 0


minlist :: [Int] -> Int
minlist  = foldr1 min

remll :: Eq a => [a] -> [a] -> [a]
remll l1 l2 = foldr (\x xs -> if x `elem` l1 then xs else x : xs) [] l2

ff :: (a -> Bool) -> [a] -> [a]
ff f = foldl(\x xs -> if f xs then xs : x else x) []

fl :: a -> [b] -> [(a,b)]
fl a b = map ((,) a) b

fl' :: a -> [b] -> [(a,b)]
fl' = map . (,)

{-
    - f = \a b -> map ((,) a) b
    - f = \a -> map ((,) a)
    - f = \a -> map $ (,) a
    - f = \a -> map . (,) $ a
    - f = \ -> map . (,)

-}

k :: (b -> c) -> (a1 -> a2 -> b) -> a1 -> a2 -> c
k = (.) . (.)

-- k = \f g x y -> f (g x y)
-- k = \f g x y -> f $ g x y
-- k = \f g x y -> f . g x $ y
-- k = \f g x   -> f . g x
-- k = \f g x   -> (f .) (g x)
-- k = \f g x   -> (f .) $ g x
-- k = \f g x   -> (f .) . g $ x
-- k = \f g     -> (f .) . g
-- k = \f g     -> (.) (f .) g
-- k = \f       -> (.) (f .)
-- k = \f       -> (.) ((.) f)
-- k = \f       -> (.) $ (.) f
-- k = \f       -> (.) . (.) $ f
-- k = (.) . (.)


mapsim :: (a -> b) -> [a] -> [b]
mapsim f m1 = f <$> m1

{-
  mapsim f m1 = do
    x1 <- m1
    return (f x1)
-}

mm :: [Int] -> [[Int]]
mm = nub . filter(\x-> length x==2 && sum x == 3) . subsequences . sort

unc :: (a->b->c) -> (a,b) -> c
unc f (x,y) = f x y

cnct :: [[a]] -> [a]
cnct = foldr (\a b -> a ++ b) []

cnct' :: [[a]] -> [a]
cnct' = foldl (++) []

fmaior :: (Num a, Ord a) => [a] -> [a]
fmaior s = [a+1 | a <- s, a>0]

ff' ::  (a -> Bool) -> [a] -> [a]
ff' f l = [a | a <- l, f a]

binario :: Int -> [Int]
binario 0 = []
binario x = binario (div x 2) ++ [mod x 2]

bin :: Int -> String
bin = concatMap show . binario

{- Search numa lista [("João",12),("Pedro",13)]: \João -> Idade: 12 -}
search_by_name x = mapM_ (print , (("Idade: " ++) . show)) . map snd . filter ((==x) . fst) 
