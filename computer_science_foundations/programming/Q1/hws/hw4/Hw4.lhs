J Bolton
Homework 4

> module Hw4 where

5.10

> divisors :: Int -> [Int]
> divisors m
>  | m < 1	= error "Only for positive integers"
>  | otherwise 	= [n | n <- [1 .. m], rem m n == 0]

> isPrime :: Int -> Bool
> isPrime m
>  | length (divisors m) == 2	= True
>  | otherwise 			= False

5.11

> matches :: Int -> [Int] -> [Int]
> matches a ls = [x | x <- ls, x == a]

> elem :: Int -> [Int] -> Bool
> elem a ls
>  | length (matches a ls) > 0 	= True
>  | otherwise 			= False

5.12

books dBase "Charlie" = [ book | (person, book) <- dBase , person == findPerson]
["Tintin" | ("Alice", "Tintin") <- exampleBase, "Alice" == "Charlie"]
["Little Women" | ("Anna", "LittleWomen") <- exampleBase, "Anna" == "Charlie"]
["Asterix" | ("Alice", "Asterix") <- exampleBase, "Alice == "Charlie"]
["Tintin" | ("Rory", "Tintin") <- exampleBase, "Rory" == "Charlie"]
books exampleBase "Charlie" = []

books exampleBase "Rory" = ["Tintin" | ("Alice", "Tintin") <- exampleBase, "Alice" == "Rory"]
["Little Women" | ("Anna", "LittleWomen") <- exampleBase, "Anna" == "Rory"]
["Asterix" | ("Alice", "Asterix") <- exampleBase, "Alice == "Rory"]
["Tintin" | ("Rory", "Tintin") <- exampleBase, "Rory" == "Rory"]
books exampleBase "Rory" = ["Tintin"]


5.14

returnLoan exampleBase "Alice" "Asterix"
returnLoan dBase pers bk = [ pair | pair <- dBase , pair /= (pers,bk) ]
returnLoan exampleBase "Alice" "Asterix" = [ ("Alice", "Tintin") | ("Alice", "Tintin") <- exampleBase , ("Alice", "Tintin") /= ("Alice", "Asterix") ]
True
[ ("Anna", "Little Women") | ("Anna", "LittleWomen") <- exampleBase , ("Anna", "LittleWomen") /= ("Alice", "Asterix") ]
True
[ ("Alice", "Asterix") | ("Alice", "Asterix") <- exampleBase , ("Alice", "Asterix") /= ("Alice", "Asterix") ]
False
[ ("Rory", "Tintin") | ("Rory", "Tintin") <- exampleBase , ("Rory", "Tintin") /= ("Alice", "Asterix") ]
True
result:
[("Alice", "Tintin"), ("Anna", "Little Women"), ("Rory", "Tintin")]

5.16

> snd :: (b, a) -> a
> snd (x, y) = y

> sing :: a -> [a]
> sing x = [x]

5.17

the type 'a -> a' could be applied to lists as well as non-lists, while '[[a]] -> [[a]]' can only be applied to lists of lists.

5.18

> shift :: ((a, b), c) -> (a, (b, c))
> shift ((x, y ), z) = (x, (y, z))

5.21

> onThreeLines :: String -> String -> String -> String
> onThreeLines x y z = x ++ "\n" ++ y ++ "\n" ++ z

5.22

> onSeparateLines :: [String] -> String
> onSeparateLines x
>  | length x == 0 	= ""
>  | length x == 1	= head x
>  | otherwise		= head x ++ "\n" ++ onSeparateLines (tail x)

5.24

> pushRight :: String -> Int -> String 
> pushRight s l = take l (replicate (l - length s) ' ' ++ s)

5.25

The line will be longer than we wanted or cut off (in my case) if the linelength is shorter
than the string

5.26
I did this one a bit differently than the author suggested, but it works
I used the data structure [(Int, Int)] where the first Int is 'n' and the second
is the corresponding fib number. I also just modularized everything

> fib :: Int -> Int
> fib n
>  | n == 0  = 0
>  | n == 1  = 1
>  | n  > 1  = fib (n-1) + fib (n-2)


> fibSeq :: Int -> [Int]
> fibSeq x 
>  | fib x == 0		= [0]
>  | otherwise 		= fib x:fibSeq (x-1)

> fibCount :: Int -> [Int]
> fibCount x = [y | y <- [0 .. x]]

> fibTable :: Int -> [(Int, Int)]
> fibTable x = zip (fibCount x) (reverse (fibSeq x))

Main> divisors 99
[1,3,9,11,33,99]
Main> divisors 7
[1,7]
Hw4> divisors (-10)
Program error: Only for Z+
Hw4> isPrime 7
True
Hw4> isPrime 12
False
Hw4> isPrime 0
Program error: Only for Z+
Hw4> matches 1 [1, 1, 2, 3, 4, 1]
[1,1,1]
Hw4> matches 1 [2, 3, 4, 6]
[]
Hw4> elem 0 [1, 2, 3, (-99)]
False
Hw4> elem (-99) [1, 2, 3, (-99)]
True
Hw4> onThreeLines "bill" "likes" "pie"
"bill\nlikes\npie"
Hw4> onSeparateLines ["we", "like", "pie"]
"we\nlike\npie"
Hw4> onSeparateLines ["we", "like", "12", "34", "56"] 
"we\nlike\n12\n34\n56"
Hw4> pushRight "hello" 3
"hel"
Hw4> pushRight "hello" 8
"   hello"
Hw4> pushRight "hello" 22
"                 hello"
Hw4> fib 6
8
Hw4> fibCount 6
[0,1,2,3,4,5,6]
Hw4> fibSeq 6
[8,5,3,2,1,1,0]
Hw4> fibTable 6
[(0,0),(1,1),(2,1),(3,2),(4,3),(5,5),(6,8)]
