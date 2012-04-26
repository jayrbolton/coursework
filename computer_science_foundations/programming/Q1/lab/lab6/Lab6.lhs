J Bolton
Lab 6

> module Lab6 where
> import Prelude hiding (product, and, or)

7.1

> firstIntPlus :: [Int] -> Int
> firstIntPlus [] = 0
> firstIntPlus (x:xs) = x + 1

Lab6> firstIntPlus [1 .. 4]
2
Lab6> firstIntPlus [(-99) .. 4]
-98

7.2 

> headAdd :: [Int] -> Int
> headAdd (x:y:ys) = x + y
> headAdd (x:xs) = x
> headAdd [] = 0

Lab6> headAdd [3]
3
Lab6> headAdd [3, 1]
4
Lab6> headAdd [3 .. 10]
7
Lab6> headAdd []
0

7.3

> firstIntPlus' :: [Int] -> Int
> firstIntPlus' x
>  | length x > 0 	= head x + 1
>  | otherwise 		= 0

Lab6> firstIntPlus' []
0
Lab6> firstIntPlus' [1, 3]
2


> headAdd' :: [Int] -> Int
> headAdd' x
>  | length x > 1 	= x!!0 + x!!1
>  | length x == 1	= head x
>  | otherwise 		= 0

Lab6> headAdd' [3 .. 10]
7
Lab6> headAdd' [3, 1]
4
Lab6> headAdd' []
0

7.4

> product :: [Int] -> Int
> product [] = 1
> product (x:xs) = x * product xs

Lab6> product [1 .. 3]
6
Lab6> product []
1
Lab6> product [3]
3

1 is chosen because product xs would return 0 once it gets to its base case,
which would give us a wrong sum

7.5

> and, or :: [Bool] -> Bool

> and [] = True
> and (x:xs)
>  | not x	= False
>  | otherwise  = and xs

Lab6> and [True, True, False]
False
Lab6> and [True, True, True]
True

> or [] = False
> or (x:xs)
>  | x		= True
>  | otherwise	= or xs

Lab6> or [False, False]
False
Lab6> or [True, False]
True

'Do hand calculations for iSort [1,2,3] and iSort [3,2,1]'
iSort [1, 2, 3]
[1, 2, 3] /= []
1:[2, 3] = ins 1 (iSort [2, 3])
iSort [2, 3]
[2, 3] /= []
2:[3] = ins 2 (iSort [3])
iSort [3]
[3] /= []
3:[] = ins 3 (iSort [])
iSort []
[] = []
1:[2, 3] = ins 1 (ins 2 (ins 3))
ins 3 [] = [3]
ins 2 [3] = [2, 3]
ins 1 [2, 3] = [1, 2, 3]

iSort [3, 2, 1]
[3, 2, 1] /= []
3:[2, 1] = ins 3 (iSort [2, 1])
iSort [2, 1]
[2, 1] /= []
2:[1] = ins 2 (iSort [1])
iSort [1]
[1] /= []
1:[] = ins 1 (iSort [])
iSort []
[] = []
3:[2, 1] = ins 3 (ins 2 (ins 1))
ins 1 [] = [1]
ins 2 [1] = [1, 2]
ins 3 [1, 2] = [1, 2, 3]

What do you notice?
iSort recursively inserts numbers into the new list one at a time.
