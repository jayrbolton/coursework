--J Bolton
--Lab 8

--10.2
{-
id . f
Bool -> Bool

f . id
a -> a

id f
(Int -> Bool) -> (Int -> Bool)

-}

--10.3

composeList :: [a -> a] -> a -> a
composeList (f:[]) = f
composeList (f:fs) = composeList fs . f

--10.4
{-
iter 3 double 1
double . double . double 1
double . double 2
double . 4
8

(comp2 succ (*)) 3 4
(*) (succ 3) (succ 4)
(*) 4 5
20
-}

--10.5
{-
Int -> Int
effect: n+n
-}

--10.7

flip' f = \x y -> f y x

--10.8

charBool = \c -> 
	if not ( or ( map (==c) [' ', '\t', '\n'] ) )
	then True
	else False

--10.9

total f = \n -> 
	if n == 0
	then f 0
	else f n + f (n-1)

--10.13
{-
Main> (map (+1) . filter (>(-1)) ) [4,3,2,0]
[5,4,3,1]
-}

{-
Test results:
Main> (composeList [(+2), (+4), (*2)]) 4
20
Main> :t flip' 
flip' :: (a -> b -> c) -> b -> a -> c
Main> charBool 'c'
True
Main> charBool ' '
False

-}
