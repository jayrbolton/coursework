--J Bolton
--Hw7

import Char

--9.7

minVal :: (Int -> Int) -> Int -> Int
minVal f n = foldr min n (map f [0 .. n])

isAllEq :: (Int -> Int) -> Int -> Bool
isAllEq f n = all (== f 0) (map f [0 .. n])

isGreaterZero :: (Int -> Int) -> Int -> Bool
isGreaterZero f n = all (>0) (map f [0 .. n])

isIncrOrder :: (Int -> Int) -> Int -> Bool
isIncrOrder f n = and (zipWith (<) (map f [0..n]) (map f [1..n]))

--9.11

sumOrdSquares :: Int -> Int
sumOrdSquares n = foldr (+) 0 (map (\ x -> x*x) [1..n])

--9.12

sumSquares :: [Int] -> Int
sumSquares ns = foldr (+) 0 (map (\ x -> x*x) (filter (>0) ns))

--9.13

unzip' :: [(a, b)] -> ([a], [b])
unzip' = foldr f ([],[])
	where
	f (x, y) (x', y') = (x:x', y:y')

last' :: [a] -> a
last' = foldr1 f
	where
	f elem elem' = elem'

init' ls = foldr f ls ls
	where
	f a b 
	 | length b == length ls = []
         | otherwise = a:b

--Problem 5.

multDigits :: [Char] -> Int
multDigits ls = foldl1 (*) [digitToInt n | n <- ls, isDigit n]

--9.14
{-
The function does nothing. It encloses each element in a list into lists, 
and then concats all of them.
-}


{-
Test results:
Main> isAllEq (^0) 4
True
Main> isAllEq (+2) 4
False
Lab7> minVal (+1) 4
1
Lab7> minVal (*3) 4
0
Main> isIncrOrder (*4) 5
True
Main> isIncrOrder (*(-1)) 5
False
Main> sumOrdSquares 5
55
Main> sumOrdSquares 3
14
Main> sumSquares [1, 5, 3]
35
Main> sumSquares [0, (-6), 1, 5, 3]
35
Main> unzip' [(1, 2), (3, 4), (5, 6)]
([1,3,5],[2,4,6])
Main> last' [1, 2, 3, 4, 5]
5
Main> last' "daydreaming"
'g'
Main> init' "daydreaming"
"daydreamin"
Main> init' [1 ..19]
[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
Main> multDigits "day12dr89reaming"
144

-}
