-- J Bolton
-- Lab 4

module Lab4 where
import Funcs {- my functions from previous chapters-}
import Char

-- Exercise 5.1

maxOccurs :: Int -> Int -> (Int, Int)
maxOccurs x y
 | x > y 	= (x, 1)
 | y > x	= (y, 1)
 | x == y 	= (x, 2)

maxThreeOccurs :: Int -> Int -> Int -> (Int, Int)
maxThreeOccurs x y z
 | max x y > z		= maxOccurs x y
 | max x z > y		= maxOccurs x z
 | max y z > x		= maxOccurs y z
 | threeEqual x y z 	= (x, 3)

-- Exercise 5.2

orderTriple :: (Int, Int, Int) -> (Int, Int, Int)
orderTriple (x, y, z) = (minThree x y z, middle x y z, maxThree x y z)

-- Exercise 5.5
{-
my list:
[0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1]
haskell's output:
Lab4> [0, 0.1 .. 1]
[0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0]
Haskell apparently always includes a zero for a decimal place that is used somewhere in the list
-}

-- Exercise 5.6 
{-
[2, 3] two items
[[2, 3]] one item - a list of lists
-}

-- Exercise 5.7
{-
Lab4> [2 .. 2]
[2]
Lab4> [2, 7 .. 4]
[2]
-}

-- Exercise 5.8

doubleAll :: [Int] -> [Int]
doubleAll x = [2 * n | n <- x]

-- Exercise 5.9 

capitalize :: String -> String
capitalize x = [ toUpper z | z <- x]

capitalizeLetters :: String -> String
capitalizeLetters x = [toUpper z | z <- x, isAlpha z]

{-Test results:
Lab4> maxOccurs 0 1
(1,1)
Lab4> maxOccurs 1 0
(1,1)
Lab4> maxOccurs 1 1
(1,2)
Lab4> maxThreeOccurs 1 2 3
(3,1)
Lab4> maxThreeOccurs 3 2 1
(3,1)
Lab4> maxThreeOccurs 2 3 1
(3,1)
Lab4> maxThreeOccurs 1 2 2
(2,2)
Lab4> maxThreeOccurs 2 2 1
(2,2)
Lab4> maxThreeOccurs 1 2 1
(2,1)
Lab4> maxThreeOccurs 1 1 2
(2,1)
Lab4> maxThreeOccurs 0 0 0
(0,3)
Lab4> orderTriple (1,2,3)
(1,2,3)
Lab4> orderTriple (3,2,1)
(1,2,3)
Lab4> orderTriple (1,99,(-6))
(-6,1,99)
Lab4> orderTriple (1,1,1)
(1,1,1)
Lab4> doubleAll [1, 2, 3, 4]
[2,4,6,8]
Lab4> doubleAll [0, (-99), 31, 1, 1, 1, 1, 1]
[0,-198,62,2,2,2,2,2]
Lab4> capitalize "testest"
"TESTEST"
Lab4> capitalize "23432kjlkj"
"23432KJLKJ"
Lab4> capitalize "23&^%$432kjlkj"
"23&^%$432KJLKJ"
Lab4> capitalizeLetters "asdlfk$%#@j233348947asD^%df"
"ASDLFKJASDDF"
Lab4> capitalizeLetters "asdlfkj2338947"
"ASDLFKJ"
Lab4> capitalizeLetters "asdlfkj3~A"
"ASDLFKJA"
-}
