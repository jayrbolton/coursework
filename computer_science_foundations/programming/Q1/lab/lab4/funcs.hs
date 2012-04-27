module Funcs where

maxThree :: Int -> Int -> Int -> Int
maxThree a b c = max (max a b) c

minThree :: Int -> Int -> Int -> Int 
minThree x y z
 | x <= y && x <=z 	= x
 | y <=z		= y
 | otherwise 		= z

middle  :: Int -> Int -> Int -> Int
middle a b c
 | (a <= c && a >= b) || (a <= b && a >= c)	= a
 | (c <= b && c >= a) || (c <= b && c >= a)	= c
 | (b <= a && b >= c) || (b <= c && b >= a)	= b

threeEqual :: Int -> Int -> Int -> Bool
threeEqual m n o = (m == n && n == o)

fourEqual :: Int -> Int -> Int -> Int -> Bool
fourEqual m n o p = (m == n && n == o && o == p)

threeDifferent :: Int -> Int -> Int -> Bool
threeDifferent m n p = not (m == n || n == p || p == m)

fourDifferent :: Int -> Int -> Int -> Int -> Bool
fourDifferent m n p q = not (m == n || n == p || p == q || p == m || q == m || q == n)

howManyEqual :: Int -> Int -> Int -> Int
howManyEqual a b c 
 | threeDifferent a b c	= 0
 | threeEqual a b c	= 3
 | otherwise 		= 2

fac :: Int -> Int
fac n
 | n == 0	= 1
 | n > 0 	= fac (n-1) * n
 | otherwise	= error "only for natural numbers"

matches a 1 = [x | x <- 1, x -- e]
elem a 1 = matches a 1 /= []
