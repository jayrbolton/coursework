--J Bolton
--Haskell Final

module Final where

--1a

partition :: Int -> [Int] -> ([Int], [Int])
partition n xs = (less n xs, greater n xs)
	where
	less _ [] = []
	less n (x:xs) = if n >= x then x : less n xs else less n xs
	greater _ [] = []
	greater n (x:xs) = if n < x then x : greater n xs else greater n xs

--Main> partition 3 [1,2,3,4,5,6]
--([1,2,3],[4,5,6])


--1b

qSort' [] = []
qSort' (x:xs) = qSort' (sort1 x xs) ++ [x] ++ qSort' (sort2 x xs)
	where
	sort1 _ [] = []
	sort1 y (x:xs) = if y >= x then x : sort1 y xs else sort1 y xs
	sort2 _ [] = []
	sort2 y (x:xs) = if y < x then x : sort2 y xs else sort2 y xs

{-Final> qSort' [9,87,6,4,89,4]
[4,4,6,9,87,89]-}

--2a

unZip4 = 
	foldr (\(a,b,c,d) (as,bs,cs,ds) -> (a:as, b:bs, c:cs, d:ds)) ([],[],[],[])

{- Final> unZip4 [(1,2,3,4), (4,3,2,1), (5,6,7,8)]
([1,4,5],[2,3,6],[3,2,7],[4,1,8])
-}

--2b

unZip4' [] = ([],[],[],[])
unZip4' ((a,b,c,d):rest) = 
	(a : (unzipA rest), b : (unzipB rest), c : (unzipC rest), d : (unzipD rest))
	where 
	unzipA [] = []
	unzipA ((a,b,c,d):rest) = a : (unzipA rest)
	unzipB [] = []
	unzipB ((a,b,c,d):rest) = b : (unzipA rest)
	unzipC [] = []
	unzipC ((a,b,c,d):rest) = c : (unzipA rest)
	unzipD [] = []
	unzipD ((a,b,c,d):rest) = d : (unzipA rest)

{-Final> unZip4' [(1,2,3,4), (4,3,2,1), (5,6,7,8)]
([1,4,5],[2,3,5],[3,2,5],[4,1,5])
 -}

--2c
{-(c) (5 points) Can the function be defined using foldr1?
Why or why not?
Yes - it would start with the last and second to last elements,
which would be fine, because otherwise we just start with an empty four-tuple
-}

--3a
{-
p f [5,2,-3,2]

p f [5,2,-3,2] /= p f []
p f (5:[2,-3,2]) = f 5 (p f [2,-3,2])
p f [2,-3,2] /= p f []
p f (2:[-3,2]) = f 2 (p f [-3,2])
p f [-3,2] /= p f []
p f ((-3):[2]) = f (-3) (p f [2])
p f [2] /= p f []
p f (2:[]) = f 2 (p f [])
p f [] = []

p f [5,2,-3,2] = f 5 (f 2 (f (-3) (f 2 [])))

f 2 []
f 2 [] = [2]

f (-3) [2] /= f x []
f (-3) (2:[])
 | (-3) > 2 
 | otherwise = 2 : f (-3) []
f (-3) [] = [-3]
f (-3) [2] = [2, -3]

f 2 [2, -3] /= f x []
f 2 (2:[-3])
 | 2 > 2 
 | otherwise = 2 : f 2 [-3]
f 2 ((-3):[])
 | 2 > (-3) 	 = 2:((-3):[])
f 2 [2, -3] = [2, 2, (-3)]

f 5 [2, 2, -3] /= f x []
f 5 (2:[2, -3])
 | 5 > 2 	= 5:(2:[2, -3])
f 5 [2, 2, -3] = [5, 2, 2, -3]

p f [5,2,-3,2] = [5, 2, 2, -3]

-}

--3b
{-
(b) (10 points) Show a line by line calculation of

p g [5,2,-3,2]

for p, it's the same as the p function in 3a, except replace f with g:

p g [5,2,-3,2] /= p g []
p g (5:[2,-3,2]) = g 5 (p g [2,-3,2])
p g [2,-3,2] /= p g []
p g (2:[-3,2]) = g 2 (p g [-3,2])
p g [-3,2] /= p g []
p g ((-3):[2]) = g (-3) (p g [2])
p g [2] /= p g []
p g (2:[]) = g 2 (p g [])
p g [] = []

p g [5,2,-3,2] = g 5 (g 2 (g (-3) (g 2 [])))

g 2 [] = [2]

g (-3) [2] /= g x []
g (-3) (2:[])
 | (-3) == 2
 | (-3) < 2 = (-3):(2:[])
g (-3) [2] = [-3, 2]

g 2 [-3, 2] /= g x []
g 2 ((-3):[2])
 | 2 == (-3)
 | 2 < (-3)
 | otherwise = (-3) : g 2 [2]
 g 2 [2] /= g x []
g 2 (2:[])
 | 2 == 2 = 2:[]
g 2 [-3, 2] = [-3, 2]

g 5 [-3, 2] /= g x []
g 5 ((-3):[2])
 | 5 == (-3)
 | 5 < (-3)
 | otherwise = (-3) : g 5 [2]
g 5 [2] /= g x []
g 5 (2:[])
 | 5 == 2
 | 5 < 2
 | otherwise = 2 : g 5 []
g 5 [] = [5]
g 5 [-3, 2] = [-3, 2, 5]

p g [5,2,-3,2] = [-3, 2, 5]

-}

--3c

p' :: (Int -> [Int] -> [Int]) -> [Int] -> [Int]
p' f xs = foldr f [] xs

--4a

f1' = filter (>5)

--4b

f2' = map (\x -> (x++x))

--4c

f3' = map (\x -> x*10 - x*x) . filter (\x -> x>5 && x<=24)

--4d

f4' = map (<20) . filter (>5)

--4e

f5' (n:ns) = filter (/=n) (ns)
