{-###################
	J Bolton
	Homework 1 for chapter 2
	Part 2 - checkerboard definitions
####################-}

module CheckerBoard where

import Pictures
import UsePictures

-- Exercise 2.3
---------------

checker2by2 :: Picture
checker2by2 = above (sideBySide white black) (sideBySide black white)

--Alternative way to get result:
altchecker2by2 :: Picture
altchecker2by2 = sideBySide (above white black) (above black white)

{-Test results:
............############
............############
............############
............############
............############
............############
............############
............############
............############
............############
............############
............############
############............
############............
############............
############............
############............
############............
############............
############............
############............
############............
############............
############............
-}

-- Q: How would you design an 8x8 board?
-- A: I would split it into two definitions so it's a little cleaner:
--    first, I would put two 2x2 boards sideBySide both inside in an 'above' function, making a 4x4
--    then, I would do the same with two 4x4 boards, making an 8x8

checker4by4 :: Picture
checker4by4 = above (sideBySide checker2by2 checker2by2) (sideBySide checker2by2 checker2by2)

checker8by8 :: Picture
checker8by8 = above (sideBySide checker4by4 checker4by4) (sideBySide checker4by4 checker4by4)
