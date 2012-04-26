-- J Bolton
-- Week 1

import Char


--------------------------
-- Hutton Slides Exercises
--------------------------

n = a `div` length xs
  where
  a = 10
  xs = [1..5]

last' = head . reverse

last'' l = drop ((length l) - 1) l

last''' [x] = x
last''' (_:xs) = last xs

init' l = reverse $ tail $ reverse l
init'' [x] = []

init'' (x:xs) = x : init'' xs
init''' l = take ((length l) -1) l

{-
['a', 'b', 'c'] :: [Char]
('a', 'b', 'c') :: (Char, Char, Char)
[(False, 0),(True, 1)] :: [(Bool, Int)]
[tail, init, reverse] :: [[a] -> [a]]
-}

second :: [a] -> a
second xs = head (tail xs)

swap :: (a, b) -> (b, a)
swap (x,y) = (y,x)

pair :: a -> b -> (a, b)
pair x y = (x,y)

double :: (Num a) => a -> a
double x = x*2

palindrome :: (Eq a) => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)


-------------------------------------
--Real World Haskell Exercises, ch. 1
-------------------------------------

--main = interact wordCount
--  where wordCount input = show (length (words input)) ++ "\n"

--main = interact charCount 
--  where charCount input = show (length input) ++ "\n"


--------------------------------
--Tim Sheard's Week 1 Assignment
--------------------------------

-- Exercise 1 
-- 3 :: Int
-- even :: (Integral a) => a -> Bool
-- even 3 :: Bool
-- head :: [a] -> a
-- [1,2,3] :: (Num a) => [a]
-- head [1,2,3] :: (Num a) => a

-- Exercise 2
f1 :: (Float -> Float) -> Float
f1 f = f 2.0

f2 :: Float -> (Float -> Float)
f2 x y = x ** y

f3 :: (Float -> Float) -> (Float -> Float)
f3 f = f

--Exercise 3
strlen s = length s

--Ex 4
fac n = product [1..n]

fac' 1 = 1
fac' n = n * fac (n-1)

--Ex 5
ncopies 1 x = [x]
ncopies n x = x : ncopies (n-1) x

ncopies' n x = take n $ repeat x

ncopies'' n x = replicate n x

--Ex 6
-- (I assume he only wants positive integer exponents)
power x 1 = x
power x p = x * power x (p-1)

--Ex 7
stringToInt s = sum $ zipWith (*) t $ reverse $ map (subtract 48) $ map ord s
  where
  t = [10^x | x <- [0,1..]]

-----------
--H99P: 1-4
-----------
--1) see first Hutton Slides exercise at top
--2

secondToLast = head . tail . reverse

secondToLast' = head . reverse . init

secondToLast'' [x,_] = x
secondToLast'' (x:xs) = secondToLast'' xs

--3

elementAt 1 (x:_) = x
elementAt _ [] = error "Index out of bounds."
elementAt n (x:xs) = elementAt (n-1) xs

--4

length' [] = 0
length' (_:xs) = 1 + length xs

length'' ls = [1 | _ <- ls]

