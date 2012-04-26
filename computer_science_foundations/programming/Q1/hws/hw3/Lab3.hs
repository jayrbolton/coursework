-- J Bolton
-- Lab 3

module Lab3 where
import Funcs {-Include functions from previous exercises-}

-- Exercise 4.1

maxFour1 :: Int -> Int -> Int -> Int -> Int
maxFour1 a b c d
 | a >= b && a >= c && a >= d	= a
 | b >= c && b >= d 		= b
 | c >= d			= c
 | otherwise 			= d

maxFour2 :: Int -> Int -> Int -> Int -> Int
maxFour2 a b c d = max (max a b) (max c d)

maxFour3 :: Int -> Int -> Int -> Int -> Int
maxFour3 a b c d = max a (maxThree b c d)

-- Exercise 4.3

howManyEqual :: Int -> Int -> Int -> Int
howManyEqual a b c 
 | threeDifferent a b c	= 0
 | threeEqual a b c	= 3
 | otherwise 		= 2

-- Exercise 4.5

rangeProduct :: Int -> Int -> Int
rangeProduct a b
 | a > b	= 0
 | a == b 	= a
 | a < b	=  a * rangeProduct (a + 1) b

-- Exercise 4.6

fac :: Int -> Int
fac a = rangeProduct 1 a

-- Exercise 4.15
allEqual :: Int -> Int -> Int -> Bool
allEqual a b c = (a == b && b == c)
{-Test cases:
1 1 1
2 2 1
1 2 2
1 2 3
1 2 1
-}

-- Exercise 4.16
solution :: Int -> Int -> Int -> Bool
solution m n p = (m+n+p) == (3*p)
{-Test inputs:
1 1 1
0 0 0
6 2 4
9 (-5) 2
9 0 2
-}

-- Exercise 4.17
allDifferent :: Int -> Int -> Int -> Bool
allDifferent a b c = threeDifferent a b c
{-Test inputs:
1 2 3
1 1 1
1 2 1
1 1 2
1 2 2
-}

-- Exercise 4.18
attempt :: Int -> Int -> Int -> Bool
attempt m n p = (m/=n) && (n/=p)
{-Test inputs: same as 4.17
Conclusion: 'attempt' does not tell us whether all three are different, such as in the case of 1 2 1
We only need to add '&& (p /= m)'
-}

{- Function tests:
Lab3> maxFour1 2 3 4 5
5
Lab3> maxFour1 2 3 4 2
4
Lab3> maxFour1 0 0 0 0
0
Lab3> maxFour2 1 0 1 0
1
Lab3> maxFour2 1 0 1 (-999)
1
Lab3> maxFour2 1 400 1 (-999)
400
Lab3> maxFour2 5 10 15 20
20
Lab3> maxFour2 1 1 1 1
1
Lab3> maxFour3 1 1 1 1
1
Lab3> maxFour3 1 1 1 99
99
Lab3> maxFour3 1 1 100 99
100
Lab3> maxFour3 101 1 100 99
101
Lab3> maxFour3 101 102 100 99
102
Lab3> howManyEqual 1 1 1
3
Lab3> howManyEqual 1 1 2
2
Lab3> howManyEqual 1 2 2
2
Lab3> howManyEqual 1 2 3
0
Lab3> rangeProduct 1 6
720
Lab3> rangeProduct (-3) 3
0
Lab3> rangeProduct (-3) (-5)
0
Lab3> rangeProduct 8 4
0
Lab3> rangeProduct 4 8
6720
-}
