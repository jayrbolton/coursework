-- J Bolton
-- Week 2

-------------------------
--Hutton Slides Exercises
-------------------------

--Ch 4
--1

--a
safetail xs = if (null xs) then [] else (drop 1 xs)

--b
safetail' xs
 | null xs      = []
 | otherwise    = drop 1 xs

--c
safetail'' [] = []
safetail'' (x:xs) = xs

--2

or' False False = False
or' _ _ = True

or'' True _ = True
or'' _ True = True
or'' _ _ = False

or''' True False = True
or''' False True = True
or''' True True = True
or''' False False = False

--3 -- Funky!
and' x y = if (x) then if (y) then True else False else False  

-- 4 --less funky 
and'' x y = if (x) then y else False

--Ch5

--1
--pythagorean triples up to n
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2+y^2 == z^2]

--2
--perfect numbers up to n
perfects n = [x | x <- [1..n], sum (fac x) == x]
    where
    fac x = [y | y <- [1..(x-1)], mod x y == 0]

--3
scalar x y = sum $ zipWith (*) x y
scalar' x y = sum $ map (\(p,q) -> p*q) $ zip x y

--Ch 6
--1
andLs [x] = x 
andLs (x:xs) = x && andLs xs

concat' [] =[]
concat' (x:xs) = x ++ concat' xs
--or...
concat'' = foldl (++) []

replicate' 0 _ = []
replicate' n x = x : replicate (n-1) x

nth (x:_) 0 = x
nth [] _ = error "Out of bounds."
nth (x:xs) n = nth xs (n-1)

elem' _ [] = False
elem' e (x:xs)
 | e == x = True
 | otherwise = elem' e xs

--2
merge' x y = qsort (x++y)

qsort [] = []
qsort (x:xs) = qsort ys ++ [x] ++ qsort zs
    where
    ys = [ n | n <- xs, n <= x]
    zs = [ n | n <- xs, n > x]

--3
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort ys) (mergesort zs)
    where
    (ys, zs) = (take l xs, drop l xs)
    l = length xs `div` 2

merge x [] = x
merge [] y = y
merge (x:xs) (y:ys)
 | x < y    = x : merge xs (y:ys)
 | x >= y   = y : merge (x:xs) ys

--------------------
--Real World Haskell
--------------------

--Ch 2 p25

--1
--False :: Bool
--(["foo","bar"],'a') :: ([[Char]], Char)
--[(True,[]), (False,[['a']])] :: [(Bool,[[Char]])

-- Ch 2 p39
--1
--Returns last element of a list
--it cannot return the tail of a list. it will not give you money

--2
--(I did this last week)
lastButOne [] = []
lastButOne l = head $ tail $ reverse l


