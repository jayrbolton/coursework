-- Homework Assignment 2
-- J Bolton

module Hw2 where

maxThree :: Int -> Int -> Int -> Int
maxThree a b c = max (max a b) c

threeEqual :: Int -> Int -> Int -> Bool
threeEqual m n o = (m == n && n == o)

--3.1
exOr :: Bool -> Bool -> Bool
exOr x y = if ((x == True && y == False) || (y == True && x == False))
		then True else False

--3.3
exOr' :: Bool -> Bool -> Bool
exOr' False False = False
exOr' False True = True
exOr' True False = True
exOr' True True = False

--3.4
nAnd :: Bool -> Bool -> Bool
nAnd x y = if (x == True && y == True) then False else True

nAnd' :: Bool -> Bool -> Bool
nAnd' True True = False
nAnd' x y = True

nAnd'' x y
	|x && y = False
	|otherwise = True
--3.7
threeDifferent :: Int -> Int -> Int -> Bool
threeDifferent m n p = not (m == n || n == p || p == m)
--If I input '3 4 3', it returns False because p cannot equal m

--3.8
fourEqual :: Int -> Int -> Int -> Int -> Bool
fourEqual m n o p = (m == n && n == o && o == p)

fourEqual' :: Int -> Int -> Int -> Int -> Bool
fourEqual' m n o p = not (threeDifferent m n o) &&
			(m == n && n == o && o == p)
--(I couldn't find any possible way to give 'threeDifferent' a practical
-- purpose here, especially in cases like '2 1 1 1' or '1 2 1 2' where 
-- threeDifferent would return false in every case)

--3.11
min :: Int -> Int -> Int
min x y
 | x <= y	= x
 | otherwise	= y

minThree :: Int -> Int -> Int -> Int
minThree x y z
 | x <= y && x <= z	= x
 | y <= z		= y
 | otherwise 		= z

--3.13
--(digitToInt was undefined for me, so I've copied it from the 'Haskell 1.4 Library Report' off the web)

isDigit :: Char -> Bool
isDigit ch = ('0' <= ch) && (ch <= '9')

digitToInt :: Char -> Int
digitToInt c
  | isDigit c            =  fromEnum c - fromEnum '0'
  | c >= 'a' && c <= 'f' =  fromEnum c - fromEnum 'a' + 10
  | c >= 'A' && c <= 'F' =  fromEnum c - fromEnum 'A' + 10
  | otherwise            =  error "Char.digitToInt: not a digit"

charToNum :: Char -> Int
charToNum ch = if (isDigit ch) then digitToInt ch else 0

{----Homework Problem #8
((3 + ((4 * 7) `div` 2)  - 4) >= 5) && (((7 `mod` 2) * 6) < 5) || ((7 ^ 2) * 3) > ((3 * (2 ^ 3)) - 2)
Result: True
----------}


{-----Testing: exOr
Hw2> exOr False False
False
Hw2> exOr False True
True
Hw2> exOr True False
True
Hw2> exOr True True
False
--------------------}

{-----Testing: nAnd/nAnd'
Hw2> nAnd' False False
True
Hw2> nAnd' False True
True
Hw2> nAnd' True False
True
Hw2> nAnd' True True
False
Hw2> nAnd False False
True
Hw2> nAnd False True
True
Hw2> nAnd True False
True
Hw2> nAnd True True
False
----------------}

{------Testing: threeDifferent
Hw2> threeDifferent 2 4 2
False
Hw2> threeDifferent 2 4 6
True
Hw2> threeDifferent 2 4 4
False
----------------}

{-----Testing: fourEqual/fourEqual'

Hw2> fourEqual' 1 2 1 2
False
Hw2> fourEqual' 2 2 2 2
True
Hw2> fourEqual' 2 2 2 1
False
Hw2> fourEqual' 1 2 2 1
False
Hw2> fourEqual 2 2 2 2
True
Hw2> fourEqual 2 1 2 2
False
Hw2> fourEqual 2 2 1 2
False
Hw2> fourEqual 2 2 2 1
False
-------------}

{-----Testing: min/minThree
Hw2> min 2 1
1
Hw2> min 1 2
1
Hw2> min 2 2
2
Hw2> min 19 888
19
Hw2> minThree 2 1 2
1
Hw2> minThree 2 1 9
1
Hw2> minThree 1 3 3
1
Hw2> minThree 213 4334 3224
213
----------------}

{-----Testing: charToNum
Hw2> charToNum '8'
8
Hw2> charToNum '9'
9
-----------}
