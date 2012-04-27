module Funcs where

maxThree :: Int -> Int -> Int -> Int
maxThree a b c = max (max a b) c

threeEqual :: Int -> Int -> Int -> Bool
threeEqual m n o = (m == n && n == o)

threeDifferent :: Int -> Int -> Int -> Bool
threeDifferent m n p = not (m == n || n == p || p == m)
