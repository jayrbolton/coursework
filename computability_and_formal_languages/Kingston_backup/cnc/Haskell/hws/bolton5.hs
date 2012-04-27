-- J Bolton
-- Assignment 5

-- all of my test functions and data have the prefix 't_'

import Data.List (foldl', inits, intercalate)

-- Part 1

-- 1.

runningSums = scanl1 (+)

-- t_runningSums = [runningSums x | x <- [0..10]]

-- 2.

sublists l@(_:xs) = tail $ inits l ++ sublists xs
sublists [] = [[]]

-- t_sublists = [sublists x | x <- [0..5]]

-- 3.

prTable ls = putStr $ (++ "\n") $ intercalate "\n"
             $ tabs $ map noBrackets $ map show ls
    where
    noBrackets = filter (\x -> not $ elem x "[]") 
    tabs = map (map (\x -> if x == ',' then '\t' else x))

--4.

tabulate f xs ys = map (\x -> [x*z | z <- ys]) xs

tabulate' f (x:xs) ys = [x*p | p <- ys] : tabulate' f xs ys
tabulate' f [] ys = []

-- Part 2.

--1.

data DUTree a b = Node (Either a b) (DUTree a b) (DUTree a b)
                  | Nil
                                  deriving (Show)

t_tree = Node (Left 1)
                (Node (Right 'x')
                    (Node (Left 2) 
                        (Node (Right 'b') Nil 
                            (Node (Right 'x') Nil Nil))
                        (Node (Left 3) Nil Nil))
                    (Node (Left 9) Nil Nil))
                (Node (Right 'q')
                    (Node (Left 2) Nil Nil)
                    (Node (Left 8) Nil Nil))

toStringT :: (Show a, Show b) => DUTree a b -> String
toStringT t = format 0 t
    where
    format n (Node x Nil Nil)   = tabs n ++ showE x ++ "\n"
    format n (Node x t1 t2)     = tabs n ++ showE x ++ "\n" ++ format (n+1) t1 ++ format (n+1) t2
    format n Nil                = tabs n ++ "Nil" ++ "\n"
    tabs n = replicate (4*n) ' ' 
    showE (Left x) = show x
    showE (Right x) = show x

printT :: (Show a, Show b) => DUTree a b -> IO ()
printT t = putStr $ toStringT t

mapT f (Node n Nil Nil) = Node (f n) Nil Nil
mapT f (Node n t1 t2)   = Node (f n) (mapT f t1) (mapT f t2)
mapT f Nil              = Nil

t_mapT = mapT (\x -> Right 'x') t_tree

foldT f p1 p2 (Node n Nil Nil) = f n p1 p2
foldT f p1 p2 (Node n Nil t2)  = f n p1 (foldT f p1 p2 t2)
foldT f p1 p2 (Node n t1 Nil)  = f n (foldT f p1 p2 t1) p2
foldT f p1 p2 (Node n t1 t2)   = f n (foldT f p1 p2 t1) (foldT f p1 p2 t2)

sumTree = Node (Left 1)
            (Node (Left 2)
                (Node (Left 3) Nil Nil)
                (Node (Left 4) Nil Nil))
            (Node (Left 5)
                (Node (Left 6) Nil Nil)
                (Node (Left 7) Nil Nil))

t_foldT = [foldT (\x y z -> z) (Left 4) (Left 2) t_tree, 
           foldT (\x y z -> y) (Left 4) (Left 2) t_tree,
           foldT (\x y z -> x) (Left 4) (Left 2) t_tree,
           foldT (\(Left x) (Left y) (Left z) -> Left (x+y+z)) (Left 0) (Left 0) sumTree,
           Left (sum [1..7])]

-- takes levels, returns a tree
takeLevelT n (Node x Nil Nil) = Node x Nil Nil
takeLevelT 1 (Node x t1 t2)   = Node x Nil Nil
takeLevelT n (Node x t1 t2)   = Node x (takeLevelT (n-1) t1) (takeLevelT (n-1) t2)
takeLevelT n Nil              = Nil

t_takeLevelT = [takeLevelT x t_tree | x <- [1..4]]

-- cuts off all branches below the node where the predicate is false
cutAtT b (Node x t1 t2)
 | b x       = Node x (cutAtT b t1) (cutAtT b t2)
 | otherwise = Nil
cutAtT b Nil = Nil

