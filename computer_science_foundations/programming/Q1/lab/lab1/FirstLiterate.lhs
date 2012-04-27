###########################################################

  Lab 1
  J Bolton
  
###########################################################


The value size is an integer (Int), defined to be the sum of 
twelve and thirteen.

> size :: Int
> size = 12+13

The function to square an integer.

> square :: Int -> Int
> square n = n*n

The function to double an integer.

> double :: Int -> Int
> double n = 2*n

An example using double, square and size.

> example :: Int
> example = double (size - square (2+2))

Functions for task 4

> doubleThenSquare :: Int -> Int
> doubleThenSquare n = square (2*n)
> squareThenDouble :: Int -> Int
> squareThenDouble n = square n * 2

Test cases

> test1 = example
> test2 = square size
> test3 = square
> test4 = double (square 2)
> test5 = 23 - double (3+1)
> test6 = 23 - double 3 + 1

test7 = double square
test8 = 2 double

> test9 = doubleThenSquare size
> test10 = squareThenDouble size

---RESULTS---
Task 1:

Main>square size
625
Main>square
ERROR - Cannot find "show" function for:
*** Expression : square
*** Of type    : Int -> Int
Main>double (square 2)
8
Main>$$
8
Main>square (double 2)
16
Main>23-double(3+1)
15
Main>23 - double 3 + 1
18
Main>$$ + 34
52
Main>13 'div' 5
ERROR - Improperly terminated character constant
Main>13 'mod' 5
ERROR - Improperly terminated character constant
'$$' recalls the value of the last result

Task 2:
Main> :type square size
square size :: Int
Main> :type square
square :: Int -> Int
Main> :type double (square 2)
double (square 2) :: Int
Main> :type square (double 2)
square (double 2) :: Int
Main> :type 23-double(3+1)
23 - double (3 + 1) :: Int
Main> :type 23-double 3+1
23 - double 3 + 1 :: Int

Task 3:
Main> double square
ERROR - Type error in application
*** Expression     : double square
*** Term           : square
*** Type           : Int -> Int
*** Does not match : Int
Main> 2 double
ERROR - Cannot infer instance
*** Instance   : Num ((Int -> Int) -> a)
*** Expression : fromInt 2 double

These functions need ints to come after them

Task 4:
Main> doubleThenSquare 2
16
Main> squareThenDouble 2
8

Test results:
Main> test1
18
Main> test2
625
Main> test3
ERROR - Cannot find "show" function for:
*** Expression : test3
*** Of type    : Int -> Int
Main> test4
8
Main> test5
15
Main> test6
18
Main> test9
2500
Main> test10
1250
