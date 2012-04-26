-- Homework 3
-- J Bolton

module Hw3 where
import Funcs {-include my functions from all previous exercises-}

-- Exercise 4.4

howManyOfFourEqual :: Int -> Int -> Int -> Int -> Int
howManyOfFourEqual a b c d
 | fourDifferent a b c d 								= 0
 | fourEqual a b c d 									= 4
 | (threeEqual a b c) || (threeEqual b c d) || (threeEqual c d a) || (threeEqual a b d) = 3
 | otherwise 										= 2

-- Exercise 4.7

multiply :: Int -> Int -> Int
multiply a b
 | a == 0 || b == 0	= b
 | otherwise 		= a + multiply a (b - 1)

-- Exercise 4.8

flSqrt :: Int -> Int
flSqrt n = flSqrtRecur n 0 1

-- x = value, y = last square, z = next square
flSqrtRecur :: Int -> Int -> Int -> Int
flSqrtRecur x y z
 | y * y == x	= y {-test for zero-}
 | z * z == x	= z {-test for perfect square-}
 | z * z > x	= y {-base case, where we've found the square greater than our number-}
 | otherwise 	= flSqrtRecur x z (z + 1) {- keep testing upwards until one of the above two guards are hit -}

-- Exercise 4.9
-- (very difficult to understand what the author wanted here...)

f :: Int -> Int
f 0 = 2
f 1 = 44
f 2 = 17
f 3 = 99
f _ = 0

fMax :: Int -> Int
fMax x
 | x == 0	= f 0 {-base-}
 | otherwise	= max (f x) (fMax (x - 1)) {-nest max functions until x hits 0-}

-- Exercise 4.10

fTest :: Int -> Bool
fTest x
 | x == 0	= f 0 == 0 {-base-}
 | otherwise 	= (f x == 0) || fTest (x - 1) {-list out ORs until x hits 0-}

-- Exercise 4.13
-- using the euclidean algorithm, because euclid was awesome

hcf :: Int -> Int -> Int
hcf x y
 | y == 0 	= x
 | x == 0 	= y
 | x > y	= hcf y (mod x y)
 | y > x	= hcf x (mod y x)

-- Exercise 4.19
{- Some test inputs for: howManyAboveAverage :: Int -> Int -> Int -> Int
0 0 0
0 1 1
10 20 30
(-93) 0 (-4)
(-93) 0 93
3242 2312 54331
14 14 14
-}

{-- Test Results:
Hw3> howManyOfFourEqual 1 1 1 1
4
Hw3> howManyOfFourEqual 1 1 1 0
3
Hw3> howManyOfFourEqual 1 1 0 1
3
Hw3> howManyOfFourEqual 1 0 1 1
3
Hw3> howManyOfFourEqual 0 1 1 1
3
Hw3> howManyOfFourEqual 0 1 1 0
2
Hw3> howManyOfFourEqual 0 1 0 0
3
Hw3> howManyOfFourEqual 1 0 0 1
2
Hw3> multiply 2 4
8
Hw3> multiply 2 6
12
Hw3> multiply 0 1
1
Hw3> multiply 10 12
120
Hw3> flSqrt 15
3
Hw3> flSqrt 30
5
Hw3> flSqrt (-9)
0
Hw3> flSqrt 0
0
Hw3> flSqrt 1
1
Hw3> flSqrt 4874
69
Hw3> f 0
0
Hw3> f 10
0
Hw3> f 17
0
Hw3> f 1
44
Hw3> f 2
17
Hw3> f' 4
4
Hw3> f' 1
44
Hw3> f' 2
17
Hw3> f' 0
0
Hw3> f' 9
9
Hw3> fMax 3
44
Hw3> fMax 3
99
Hw3> fMax 1
44
Hw3> fMax 2
44
Hw3> fMax 0
0
Hw3> fTest 2
True
Hw3> fTest 2
False
Hw3> fTest 4
True
Hw3> hcf 84 18
6
Hw3> hcf 18 84
6
Hw3> hcf 5 22
1
Hw3> hcf 22 4
2i think that technically y
Hw3> hcf 0 5
5
Hw3> hcf 84 18
6
Hw3> hcf 18 84
6
Hw3> hcf 5 22
1
Hw3> hcf 22 4
2
Hw3> hcf 0 5
5
penguins!-}
