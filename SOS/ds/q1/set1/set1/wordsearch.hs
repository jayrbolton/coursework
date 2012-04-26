-- Jay R Bolton
-- Data Structures, Quarter 1, Week 1, Problem Set 1 
-- Run this program with the "solution" function (no arguments)

{-
 1. The puzzle is made into a 2d list zipped with coordinates.
 2. We convert our list of words into a merged Tree (or trie)
 4. Test our trie over all transformations
   4a. Test a tree against a word
-}

import Data.List (inits, delete,tails)

mywords = ["this","two","fat","that"]

puzzle' = ["this"
          ,"wats"
          ,"oahg"
          ,"fgdt"]

-- 1. The puzzle is made into a 2d list zipped with coordinates.

puzzle = let width = length $ puzzle'!!0
             height = length puzzle'
          in splitEvery width $
             zip (concat puzzle') [(c,r) | c <- [0..width-1],
                                           r <- [0..height-1]]

splitEvery _ [] = []
splitEvery n ls = let (xs,ys) = splitAt n ls
                   in xs : splitEvery n ys

-- 2. We convert our list of words into a merged Tree (or trie)

data Trie = Node Char [Trie]
  deriving (Show, Eq)

-- Makes a single word into a tree with a bunch of unary branches
unfoldWord [x]    = [Node x []]
unfoldWord (x:xs) = [Node x (unfoldWord xs)]

-- Takes tries and a word and merges the word into the tries
mergeTrie ys [] = unfoldWord ys
mergeTrie (y:ys) ((Node x t):ts)
 | x == y = Node x (mergeTrie ys t):ts
 | otherwise = Node x t : (mergeTrie (y:ys) ts)

-- Takes two words and merges them into a trie
trieify [] y = unfoldWord y
trieify x [] = unfoldWord x
trieify (x:xs) (y:ys)
 | x == y    = [Node x (trieify xs ys)]
 | otherwise = [Node x (unfoldWord xs), Node y (unfoldWord ys)]

-- Take our list of words and turn
wordsTrie = foldr mergeTrie (unfoldWord $ head mywords) (tail mywords)


--  3. Get a list of all rows, columns, and diagonals of our puzzle

transpose = foldr (zipWith (:)) (repeat [])

-- Returns all diagonals in both directions
diags m = let c = concat m      -- we'll do this 1-dimensionally
              l = length c      -- total length
              w = length $ m!!0 -- length of the rows
           in [take (w-y) [c!!x | x <- [y, y+w+1..l-1]] | y <- [0..w-1]]
           ++ [take (y+1) [c!!x | x <- [y, y+w-1..l-1]] | y <- [0..w-1]]
           ++ [[c!!x | x <- [y, y+w+1..l-1]] | y <- [w,w*2..l-1]]
           ++ [[c!!x | x <- [y, y+w-1..l-1]] | y <- [w*2-1,w*3-1..l-1]]

-- Return all necessary transformations of our puzzle
explode = let cols = transpose puzzle 
              dias = diags puzzle
                in puzzle ++ cols ++ dias ++
                   (map reverse puzzle) ++
                   (map reverse cols) ++
                   (map reverse dias)

-- 4. Test our trie over all transformations

fat = init $ explode!!37

-- 4a. Test a tree against a word
-- This will return any prefix of a match. ie "two" and "twzz" will match as "tw"
exploreAll w = map (explore wordsTrie) (tails w)
explore ((Node x t):ts) w@((y,n):ys)
 | x == y    = n:explore t ys
 | otherwise = explore ts w
explore [] _ = []
explore _ [] = []

exploreAllb w = foldr f [] (tails w) ++ foldr f [] (init$inits w)
  where f x xs = if exploreb wordsTrie x
                 then x ++ xs
                 else xs
exploreb ((Node x []):_) [(y,_)]
 | x == y    = True
 | otherwise = False
exploreb ((Node x t):ts) w@((y,n):ys)
 | x == y    = exploreb t ys
 | otherwise = exploreb ts w
exploreb [] _ = False
exploreb _ [] = False

solution = filter (/=[]) $ map exploreAllb explode
