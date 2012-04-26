J Bolton
Lab 5

> module Lab5 where

6.1

> superimposeChar :: Char -> Char -> Char
> superimposeChar a b
>  | a == '.' && b == '.' 	= '.'
>  | otherwise			= '#'

6.2

> superimposeLine :: [Char] -> [Char] -> [Char]
> superimposeLine x y = [ superimposeChar a b | (a, b) <- zip x y ]

6.3

> type Picture = [[Char]]

> horse = [".......##...",
>          ".....##..#..",
>          "...##.....#.",
>          "..#.......#.",
>          "..#...#...#.",
>          "..#...###.#.",
>          ".#....#..##.",
>          "..#...#.....",
>          "...#...#....",
>          "....#..#....",
>          ".....#.#....",
>          "......##...."]

> stripes = ["############",
>            "............",
>            "############",
>            "............",
>            "############",
>            "............",
>            "############",
>            "............",
>            "############",
>            "............",
>            "############",
>            "............"]

> superimpose :: Picture -> Picture -> Picture
> superimpose x y = [ superimposeLine a b | (a, b) <- zip x y ]

6.4

> printPicture :: Picture -> IO ()
> printPicture = putStr . concat . map (++"\n")

6.5

If true = white, then we'd have to make superimposeChar look like:
superimposeChar :: Bool -> Bool -> Bool
superimposeChar a b
 | a && b	= True
 | otherwise	= False
superimposeLine and superimpose can remain the same

6.7

> rotateLine :: Picture -> Int -> [Char]
> rotateLine [] _ 	= []
> rotateLine (x:xs) n	= x!!n : rotateLine xs n

> rotatePictureRecur :: Picture -> Int -> Picture
> rotatePictureRecur pic 0 = [ rotateLine pic 0 ]
> rotatePictureRecur pic n = rotateLine pic n : rotatePictureRecur pic (n-1)

> rotatePicture :: Picture -> Picture
> rotatePicture [ ] = [ ]
> rotatePicture pic = rotatePictureRecur pic (length (head pic) - 1)

6.9

> type Position = (Integer, Integer)
> type Image = (Picture, Position)

> makeImage :: Picture -> Position -> Image
> makeImage pic pos = (pic, pos)

6.10

> horseImage = (horse, (4, 4))
> changePosition :: Image -> Position -> Image
> changePosition (x, y) pos = (x, pos)

6.11

> moveImage :: Image -> Integer -> Integer -> Image
> moveImage (x, (y, z)) xMove yMove = (x, ((y + yMove), (z + xMove)))

6.12

> printImage :: Image -> IO()
> printImage (x,y) =  printPicture x

6.18

> maxThreeOccurs :: Int -> Int -> Int -> (Int, Int)
> maxThreeOccurs x y z = (max3, occurs)
> 	where
> 	max3 = max (max x y) z
> 	occurs = length [a | a <- [x,y,z], a==max3]

6.19

maxThreeOccurs 4 5 5 = (max3, occurs)
	where
	max3 = max (max 4 5) 5
	occurs = length [5, 5]
	= 5
	= 2
maxThreeOccurs 4 5 4 = (max3, occurs)
	where
	max3 = max (max 4 5) 5
	occurs = length [5]
	= 5
	= 1


Test Results:
Lab5> superimposeChar '.' '.'
'.'
Lab5> superimposeChar '.' 'a'
'#'
Lab5> superimposeChar '#' '.'
'#'
Lab5> superimposeLine ".#.#" ".##."
".###"
Lab5> superimposeLine "####" "...."
"####"
Lab5> superimposeLine "####" "..#."
"####"
Lab5> superimposeLine "##.#" "...."
"##.#"
Lab5> printPicture (superimpose horse stripes)
############
.....##..#..
############
..#.......#.
############
..#...###.#.
############
..#...#.....
############
....#..#....
############
......##....
Lab5> printPicture horse
.......##...
.....##..#..
...##.....#.
..#.......#.
..#...#...#.
..#...###.#.
.#....#..##.
..#...#.....
...#...#....
....#..#....
.....#.#....
......##....

Lab5> printPicture (rotatePicture horse)
............
..#####.....
.#....#.....
#....#......
#....#..####
.#..####...#
.#........#.
..#......#..
..#.....#...
...###.#....
......#.....
............
Lab5> makeImage horse (2,2)
([".......##...",".....##..#..","...##.....#.","..#.......#.","..#...#...#.","..#...###.#.",".#....#..##.","..#...#.....","...#...#....","....#..#....",".....#.#....","......##...."],(2,2))
Lab5> changePosition horseImage (4,4)
([".......##...",".....##..#..","...##.....#.","..#.......#.","..#...#...#.","..#...###.#.",".#....#..##.","..#...#.....","...#...#....","....#..#....",".....#.#....","......##...."],(4,4))
Lab5> moveImage horseImage 2 2
([".......##...",".....##..#..","...##.....#.","..#.......#.","..#...#...#.","..#...###.#.",".#....#..##.","..#...#.....","...#...#....","....#..#....",".....#.#....","......##...."],(6,6))
Lab5> moveImage horseImage (-3) (-50)
([".......##...",".....##..#..","...##.....#.","..#.......#.","..#...#...#.","..#...###.#.",".#....#..##.","..#...#.....","...#...#....","....#..#....",".....#.#....","......##...."],(-46,1))
Lab5> maxThreeOccurs 2 2 2
(2,3)
Lab5> maxThreeOccurs 2 2 1
(2,2)
Lab5> maxThreeOccurs 2 1 1
(2,1)
Lab5> maxThreeOccurs 2 2 1
(2,2)
Lab5> maxThreeOccurs 2 1 2
(2,2)
Lab5> maxThreeOccurs 298 (-958) 0
(298,1)
