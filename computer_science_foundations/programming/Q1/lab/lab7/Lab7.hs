--J Bolton
--Lab 7

module Lab7 where
import Char

--9.2

length' :: [a] -> Int
length' ls = sum (map assgn ls)
	where
	assgn x = 1

--9.3

addUp :: [Int] -> [Int]
addUp ls = map addOne (filter greaterOne ls) 
	where 
	greaterOne n = n > 0
	addOne n = n + 1

--9.4
{-
'map addOne(map addOne ls)' will add 2 to each int in the list. 
The first map will apply f to each element in the list list, producing a new 
list on which the second map will apply g.-}

{-
Describe the effect of map (addOne.addOne) ns. 
Adds 2 to each element in ns

What is the difference between map f (map g xs) and map (f.g) xs?
Nothing

Are they computed differently? 
No

Do they give different answers? 
No
-}

--9.5
{-
'filter greaterOne (filter lessTen ns)' 
From the list ns, we first exclude all ints >= 10. Then, we exclude all ints <=
1
'filter p (filter q xs)'
First, remove all elements that do not satisfy q, creating a new list on which
we remove all elements not satsifying p.
-}

--9.6

squareList :: [Int] -> [Int]
squareList ls = map (\ x -> x * x) ls

sumSquareList :: [Int] -> Int
sumSquareList ls = sum (squareList ls)

takeGreaterZero :: [Int] -> [Int]
takeGreaterZero ls = filter (>0) ls

--9.8

twice :: (Int -> Int) -> Int -> Int
twice f n = f (f n)

--most general type could be: (a -> b) -> a -> b

{-
Test results:
Lab7> length' "2BR02B"
6
Lab7> length' [4,3,54,5,3]
5
Lab7> addUp [0, (-1), 3, 5, 3]
[4,6,4]
Lab7> minVal (+1) 4
1
Lab7> minVal (*3) 4
0
Lab7> isAllEq (+1-1) 0
True
Lab7> isAllEq (*2) 8
False
Lab7> twice (*2) 4
16
Lab7> squareList [3 .. 6]
[9,16,25,36]
Lab7> sumSquareList [3 .. 6]
86
Lab7> takeGreaterZero [(-3)..7]
[1,2,3,4,5,6,7]
-}
