{-################################
	J Bolton
	Homework 1 for Chapter 2
	Part 1 - black horse and black square
##################################-}


-- Exercise 2.1
---------------

module UsePictures where

import Pictures

blackHorse :: Picture
blackHorse = invertColour horse

rotateHorse :: Picture
rotateHorse = rotate horse

{- Tests:
 blackHorse:
#######..###
#####..##.##
###..#####.#
##.#######.#
##.###.###.#
##.###...#.#
#.####.##..#
##.###.#####
###.###.####
####.##.####
#####.#.####
######..####
rotateHorse:
....##......
....#.#.....
....#..#....
....#...#...
.....#...#..
.##..#....#.
.#.###...#..
.#...#...#..
.#.......#..
.#.....##...
..#..##.....
...##.......

-}

-- Exercise 2.2
---------------

black :: Picture
black = superimpose horse blackHorse

{- Test results:
############
############
############
############
############
############
############
############
############
############
############
############
-}

-- Yay!!!
