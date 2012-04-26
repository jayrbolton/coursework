J Bolton
Homework 6

> module Hw6 where
> import Prelude hiding (zip3)

7.6

List recursion:

> elemNum :: Int -> [Int] -> Int
> elemNum _ [] = 0
> elemNum n (x:xs)
>  | n == x 	= 1 + elemNum n xs
>  | otherwise  = elemNum n xs

Hw6> elemNum 3 [1, 3, 3, 4, 4, 4]
2
Hw6> elemNum 4 [1, 3, 3, 4, 4, 4]
3
Hw6> elemNum 1 [1, 3, 3, 4, 4, 4]
1

List comprehension:

> elemNum' :: Int -> [Int] -> Int
> elemNum' n l = length [ z | z <- l, z == n ]

Hw6> elemNum' 1 [1, 3, 3, 4, 4, 4]
1
Hw6> elemNum' 4 [1, 3, 3, 4, 4, 4]
3
Hw6> elemNum' 3 [1, 3, 3, 4, 4, 4]
2

7.7

> isElem :: Int -> [Int] -> Bool
> isElem x xs
>  | length [ n | n <- xs, n == x ] > 0 	= True
>  | otherwise					= False

> remElem :: Int -> [Int] -> [Int]
> remElem x xs = [ n | n <- xs, n /= x]

List recursion:

> unique :: [Int] -> [Int]
> unique [] = []
> unique (x:xs)
>  | isElem x xs	= unique (remElem x xs)
>  | otherwise		= x : unique xs

Hw6> unique [1, 2, 3, 1, 4]
[2,3,4]
Hw6> unique [1, 2, 2, 1]
[]

7.11

Inserts integer into ascending order list:

> ins :: Int -> [Int] -> [Int]
> ins i [] = [i]
> ins i (x:xs)
>  | i <= x 	= i : x : xs
>  | otherwise 	= x: ins i xs

Inserts integer into descending order list:

> insDes :: Int -> [Int] -> [Int]
> insDes i [] = [i]
> insDes i (x:xs)
>  | i >= x 	= i : x : xs
>  | otherwise	= x : insDes i xs

Makes a list descending order:

> iSortDes :: [Int] -> [Int]
> iSortDes [] = []
> iSortDes (x:xs) = insDes x (iSortDes xs)

Hw6> iSortDes [3, 6, 1, 4, 89]
[89,6,4,3,1]

Removes duplicates in a list:

> remDup :: [Int] -> [Int]
> remDup [] = []
> remDup (x:xs)
>  | isElem x xs	= x : remDup (remElem x xs)
>  | otherwise		= x : remDup xs

Sorts list in ascending order:

> iSort :: [Int] -> [Int]
> iSort [] = []
> iSort (x:xs) = ins x (iSort xs)

Sorts list in ascending order and removes duplicates:

> iSortNoDups :: [Int] -> [Int]
> iSortNoDups l = iSort (remDup l)

Hw6> iSortNoDups [3, 6, 3, 1, 4, 89, 6]
[1,3,4,6,89]

7.13

> insLexico :: (Int, Int) -> [(Int, Int)] -> [(Int, Int)]
> insLexico t [] = [t]
> insLexico (p, q) ((x, y):xs)
>  | (p < x) || (p == x && q <= y) 	= (p, q) : (x, y) : xs
>  | otherwise 				= (x, y) : insLexico (p, q) xs

> iSortLexico :: [(Int, Int)] -> [(Int, Int)]
> iSortLexico [] = []
> iSortLexico ((t):xs) = insLexico t (iSortLexico xs)

Hw6> iSortLexico [(4, 2), (1, 4), (6, 2)]
[(1,4),(4,2),(6,2)]
Hw6> iSortLexico [(6, 2), (6, 4), (6, 2)]
[(6,2),(6,2),(6,4)]

7.16

Recursive:

> zip3 :: [a] -> [b] -> [c] -> [(a, b, c)]
> zip3 [] [] [] = []
> zip3 (x:xs) (y:ys) (z:zs) = (x, y, z) : zip3 xs ys zs

Hw6> zip3 ['q', 'a'] [45, 99] ["vroom", "fondel"]
[('q',45,"vroom"),('a',99,"fondel")]

Using 'zip':

> concatTup :: [(a, (b, c))] -> [(a, b, c)]
> concatTup [] = []
> concatTup ((x, (y, z)):zs) = (x, y, z) : concatTup zs

> zip3' :: [a] -> [b] -> [c] -> [(a, b, c)]
> zip3' x y z = concatTup (zip x (zip y z))

Hw6> zip3' ['a', 'b', 'c'] [1, 2, 3] [4, 5,6]
[('a',1,4),('b',2,5),('c',3,6)]

The downside of using zip is you'd have a tuple within a tuple, so you have to
make a new function that turns that into a regular tuple. But once you get
around that, it would be more modular than defining it from scratch, and
'concatTup' may be useful elsewhere. (I think the first definition seems more
efficient though)

7.18

> isSublist :: Eq a => [a] -> [a] -> Bool
> isSublist [] _ = True
> isSublist _ [] = False
> isSublist (x:xs) (y:ys)
>  | x == y && isSublist xs ys		= True
>  | otherwise  			= isSublist (x:xs) ys

Hw6> isSublist [1, 4, 7] [1, 2, 3, 6, 7]
False
Hw6> isSublist [1, 4, 7] [1, 2, 3, 4, 5, 6, 7]
True
Hw6> isSublist "aaa" "alpaca"
True
Hw6> isSublist "acaa" "alpaca"
False

For this function, 'isSubseq' basically just checks where our list starts. Then,
it runs a local function that makes sure all subsequent elements are equivelant
in the exact order.

> isSubseq :: Eq a => [a] -> [a] -> Bool
> isSubseq [] _ = True
> isSubseq _ [] = False
> isSubseq (x:xs) (y:ys)
>  | x == y 	= checkSubseq xs ys
>  | otherwise  = isSubseq (x:xs) ys
> 	where
> 	checkSubseq :: Eq a => [a] -> [a] -> Bool
>	checkSubseq [] _ = True
> 	checkSubseq _ [] = False
> 	checkSubseq (p:ps) (q:qs)
> 	 | p == q && checkSubseq ps qs 	= True
> 	 | otherwise 			= False
