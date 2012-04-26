J Bolton
Homework 5

> module Hw5 where
> import Prelude hiding (lookup) 

6.6

For this function, I simply copy everything I did for 6.7 in Lab 5
and reverse/mirror the final image. It could probably be simpler...

> type Picture = [[Char]]
> printPicture :: Picture -> IO ()
> printPicture = putStr . concat . map (++"\n")

> horse = [".......##.....",
>          ".....##..#....",
>          "...##.....#...",
>          "..#.......#...",
>          "..#...#...#...",
>          "..#...###.#...",
>          ".#....#..##...",
>          "..#...#.......",
>          "...#...#......",
>          "....#..#......",
>          ".....#.#......",
>          "......##......"]

> rotateLine :: Picture -> Int -> [Char]
> rotateLine [] _ 	= []
> rotateLine (x:xs) n	= x!!n : rotateLine xs n

> rotatePictureRecur :: Picture -> Int -> Picture
> rotatePictureRecur pic 0 = [ rotateLine pic 0 ]
> rotatePictureRecur pic n = rotateLine pic n : rotatePictureRecur pic (n-1)

> rotatePicture :: Picture -> Picture
> rotatePicture [ ] = [ ]
> rotatePicture pic =  
> 	reverse (map reverse (rotatePictureRecur pic (length (head pic) - 1)))

6.8

Double each character without doubling whole lines

> scaleWidth :: Picture -> Int -> Picture
> scaleWidth [] _ = []
> scaleWidth (x:xs) n = concat ([ take n (repeat y) | y <- x ]) : scaleWidth xs n

Double each line without doubling characters

> scaleHeight :: Picture -> Int -> Picture
> scaleHeight [] _ = []
> scaleHeight (x:xs) n = replicate n x ++ scaleHeight xs n

Combine the above two functions for a proportional scaling

> scalePicture :: Picture -> Int -> Picture
> scalePicture [] _ = []
> scalePicture pic n = scaleHeight (scaleWidth pic n) n

6.20

I changed price to float for the possibility of pence fractions as the author suggested.
I tried to make the if, then, else statements into separate functions, but
couldn't get it working. Kept getting a type error.

> type Price = Float

> formatPence :: Price -> String
> formatPence p = show (div (round p) 100) ++ "." ++ if mod (round p) 100 < 10 
>	then "0" ++ show (mod (round p) 100) 
>	else show (mod (round p) 100)

6.21

Each line will be exactly 30 characters

> type Name = String
> formatLine :: (Name, Price) -> String
> formatLine (n, p) = n ++ dots ++ formatPence p ++ "\n"
> 	where
> 	dots = replicate (30 - (length n + length (formatPence p))) '.'

6.22

> namePriceDB :: [(Name, Price)]
> namePriceDB = [("Pocky", 230::Float),
>		("Baby penguin", 34902::Float), 
>		("Snow Leopard, 1lb", 23432::Float)]
> formatLines :: [(Name, Price)] -> String
> formatLines [] = []
> formatLines (x:xs) = formatLine x ++ formatLines xs

6.23

> type BillType = [(Name, Price)]
> makeTotal :: BillType -> Price
> makeTotal [] = 0
> makeTotal ((n,p):xs) = p + makeTotal xs

6.24

> formatTotal :: Price -> String
> formatTotal p = 
> 	"\nTotal" ++ replicate (25 - length (formatPence p)) '.' ++ formatPence p

6.25

> formatBill :: BillType -> String
> formatBill b = formatLines b ++ formatTotal (makeTotal b)

6.26

> type Barcode = Int
> type Database = [(Barcode, Name, Price)]
> barcodeDB = [(2343::Int, "Pocky", 230::Float),
>		(1298::Int, "Baby penguin", 34902::Float), 
>		(3743::Int, "Snow Leopard, 1lb", 23432::Float)]
> look :: Database -> Barcode -> (Name, Price)
> look [] _ 		= ("Unknown", 0)
> look ((c, n, p):xs) b = if (c == b) then (n, p) else look xs b

6.27

> lookup :: Barcode -> (Name, Price)
> lookup b = look barcodeDB b

6.28

> type TillType = [Barcode]
> till = [2343::Int, 1298::Int, 3743::Int, 1234::Int]
> makeBill :: TillType -> BillType
> makeBill t = [ lookup x | x <- t ]

Test results:

Hw5> printPicture horse
.......##.....
.....##..#....
...##.....#...
..#.......#...
..#...#...#...
..#...###.#...
.#....#..##...
..#...#.......
...#...#......
....#..#......
.....#.#......
......##......
Hw5> printPicture (rotatePicture horse)
............
.....#......
....#.###...
...#.....#..
..#......#..
.#........#.
#...####..#.
####..#....#
......#....#
.....#....#.
.....#####..
............
............
............
Hw5> printPicture (scaleWidth horse 2)
..............####..........
..........####....##........
......####..........##......
....##..............##......
....##......##......##......
....##......######..##......
..##........##....####......
....##......##..............
......##......##............
........##....##............
..........##..##............
............####............

Hw5> printPicture (scaleHeight horse 2)
.......##.....
.......##.....
.....##..#....
.....##..#....
...##.....#...
...##.....#...
..#.......#...
..#.......#...
..#...#...#...
..#...#...#...
..#...###.#...
..#...###.#...
.#....#..##...
.#....#..##...
..#...#.......
..#...#.......
...#...#......
...#...#......
....#..#......
....#..#......
.....#.#......
.....#.#......
......##......
......##......

Hw5> printPicture (scalePicture horse 2)
..............####..........
..............####..........
..........####....##........
..........####....##........
......####..........##......
......####..........##......
....##..............##......
....##..............##......
....##......##......##......
....##......##......##......
....##......######..##......
....##......######..##......
..##........##....####......
..##........##....####......
....##......##..............
....##......##..............
......##......##............
......##......##............
........##....##............
........##....##............
..........##..##............
..........##..##............
............####............
............####............

Hw5> printPicture (scalePicture horse 0)

Hw5> printPicture (scalePicture horse (-1))
Hw5> formatPence 1034
"10.34"
Hw5> formatPence 12.02
"0.12"
Hw5> formatLine ("Dry Sherry, 1lit", 2034)
"Dry Sherry, 1lit.........20.34\n"
Hw5> length (formatLine ("Dry Sherry, 1lit", 2034))
31
Hw5> formatLine ("Hamsters", 434)"Hamsters..................4.34\n"
Hw5> length (formatLine ("Hamsters", 434))
31
Hw5> putStr (formatLines namePriceDB)
Pocky.....................2.30
Baby penguin.............349.2
Snow Leopard, 1lb.......234.32
Hw5> makeTotal namePriceDB
58564.0
Hw5> 230+34902+23432
58564
Hw5> formatTotal 58564
"\nTotal...................585.64"
Hw5> length (formatTotal 58564)
31
Hw5> putStr (formatBill namePriceDB)
Pocky.....................2.30
Baby penguin.............349.2
Snow Leopard, 1lb.......234.32

Total...................585.64
Hw5> look barcodeDB 1298
("Baby penguin",34902.0)
Hw5> look barcodeDB 2321
("Unknown",0.0)
Hw5> lookup 3743
("Snow Leopard, 1lb",23432.0)
Hw5> makeBill till
[("Pocky",230.0),("Baby penguin",34902.0),("Snow Leopard, 1lb",23432.0),("Unknown",0.0)]
Hw5> formatPence 4
"0.04"
Hw5> formatPence 40
"0.40"

