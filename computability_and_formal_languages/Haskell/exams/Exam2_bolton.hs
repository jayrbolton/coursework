-- J Bolton
-- Haskell exam 2
-- Test cases are at the bottom

module Exam2 where

import Data.List (foldl', foldl1')
import Control.Applicative

data GTree a = Node a [GTree a]
    deriving (Show)

-- (a). GTree


instance Functor GTree where
    fmap g (Node x []) = Node (g x) []
    fmap g (Node x ts) = Node (g x) (map (fmap g) ts)

-- (b). Preorder flatten

flattenGT (Node x []) = [x]
flattenGT (Node x ts) = x : (foldl' (\xs x -> xs++(flattenGT x))  [] ts)

-- (c). Preorder foldr

foldGT f z t = foldr f z (flattenGT t)

foldGT' f z (Node x []) = f x z
foldGT' f z (Node x ((Node y ts):ts')) = f x (foldGT' f z (Node y (ts++ts'))) 


-- (d). Flatten with fold.

flattenGT' = foldGT (:) []
flattenGT'' = foldGT' (:) []

-- (e). 
{-
Proof of functor laws.
(fl1)
Base case:
    Left side:
        fmap id (Node x []) 
         = Node (id x) []    [def. of fmap]
         = Node x []         [def. of id]
    Right side:
        id (Node x [])
         = Node x []         [def. of id]
Inductive hypothesis: assume fmap id = id for all trees with n nodes or less.
Induction:
    Let each t in ts have <= n nodes
    Left side:
        fmap id (Node x ts)
         = Node (id x) (map (fmap id) ts)
         [by the def. of map for lists, fmap id is applied to each t in ts,
         and by the IH, each fmap id t is equal to t]
         = Node (id x) ts
         = Node x ts
    Right side:
        id (Node x ts)
         = Node x ts    [def. of id]

(fl2)
Base case:
    Left side:
        fmap (g . h) (Node x []) 
         = Node ((g . h) x) []              [def. fmap]
         = Node (g (h x)) []                [def. (.)]
    Right side:
        (fmap g . fmap h) (Node x [])
         = fmap g (fmap h (Node x []))      [def. (.)]
         = fmap g (Node (h x) [])           [def. fmap]
         = Node (g (h x)) []                [def. fmap]
Inductive hypothesis (IH): assume fmap (g .h) = fmap g . fmap h for all trees
with <= n nodes
Induction:
  Let each t in ts have <= n nodes
  Left side:
    fmap (g . h) (Node x ts)
     = Node ((g . h) x) (map (fmap (g . h)) ts)          {def. fmap}
     = Node ((g . h) x) (map (fmap g . fmap h) ts)       {IH}
     = Node (g (h (x))) (map (fmap g . fmap h) ts)       {def. (.)}
  Right side:
    (fmap g . fmap h) (Node x ts)
     = fmap g (fmap h (Node x ts))                       {def. (.)}
     = fmap g (Node (h x) (map (fmap h) ts))             {def. fmap}
     = Node (g (h (x))) (map (fmap g) (map (fmap h) ts)) {def. fmap}
     = Node (g (h (x))) ((map (fmap g) . map (fmap h)) ts)  {def. (.)}
     = Node (g (h (x))) (map (fmap g . fmap h) ts)         {func law for lists} 

-}


-- 2.

-- (b).

data Expr = Val Int
          | BinOp Op Expr Expr
data Op = Mul | Div

evalM :: Expr -> Maybe Int
evalM (Val x) = return x
evalM (BinOp Mul e1 e2) = evalM e1 >>= \v1 ->
                          evalM e2 >>= \v2 ->
                          return (v1 * v2)
evalM (BinOp Div e1 e2) = evalM e1 >>= \v1 ->
                          evalM e2 >>= \v2 ->
                          v1 `sdiv` v2

sdiv _ 0 = Nothing
sdiv x y = Just (x `div` y)

-- 3.

{-

itl = \n -> \f -> take n . iterate (map f)

AST and typing of names                     Principal Type of AST Node
-----------------------                     --------------------------
\n :: Int                                   \n -> \f -> take n . iterate (map f)
                                            :: Int -> (a -> a) -> [[a]]
    \f :: (a -> a)                          \f -> take n . iterate (map f)
                                            :: (a -> a) -> [[a]]
        (.) :: (b -> c) -> (a -> b) -> c    taken n . iterate (map f)
                                            :: [[a]]
            take                            \ls -> take n (iterate (map f) ls)
            :: Int -> [a] -> [a]            :: [a] -> [[a]]
                n :: Int                    n :: Int
                iterate                     iterate (map f) :: [a] -> [[a]]
                :: (a -> a) -> a -> [a]
                    map ::                  map f :: [a] -> [a]
                    (a -> b) -> [a] -> [b]
                        f :: (a -> a)       f :: (a -> a)

I assumed that we apply the functions inside the composition, so take becomes
\z -> take n (iterate (map f) z)

myCurry = curry (curry id)

AST and typing of names                     Principal Type of AST Node
-----------------------                     --------------------------
curry ::                                    curry (curry id) ::
((a,c) -> b) -> a -> c -> b                 a -> c -> b -> ((a, c), b)
    curry ::                                curry id
    (((a,c), b) -> ((a,c),b))               (a,c) -> b -> ((a,c),b)
    -> (a,c) -> b -> ((a,c),b)            
        id :: ((a,c),b) -> ((a,c),b)        id :: ((a,c),b) -> ((a,c),b)

It was amazingly difficult to figure out how the types of these functions
unify. I'm always impressed by all the tricky things Haskell can do. 

-}


-- 4.

data Error a = Ok a | Error String
    deriving (Show)

-- (a).

instance Monad Error where
    return x = Ok x
    (Error s) >>= _ = Error s
    (Ok x)  >>= f = f x

-- (b).

evalE :: Expr -> Error Int
evalE (Val x) = return x
evalE (BinOp Mul e1 e2) = evalE e1 >>= \v1 ->
                          evalE e2 >>= \v2 ->
                          return (v1 * v2)
evalE (BinOp Div e1 e2) = evalE e1 >>= \v1 ->
                          evalE e2 >>= \v2 ->
                          v1 `ediv` v2

ediv _ 0 = Error "Division by zero."
ediv x y = Ok (x `div` y)

-- (c).

instance Functor Error where
    fmap _ (Error s) = Error s
    fmap g (Ok v) = Ok (g v)

-- (d).

instance Applicative Error where
    pure x = Ok x
    (Error s1) <*> (Error s2) = Error (s1 ++ " | " ++ s2)
    (Error s) <*> _           = Error s
    _ <*> (Error s)           = Error s
    (Ok g) <*> (Ok v)         = Ok (g v)




-- 5.

(>=>) :: Monad m => (a -> m b) -> (b -> m c) -> (a -> m c)
g >=> h = \x -> (g x >>= h)

{-
(ml1) (return >=> g) = g
    return >=> g
     = \x -> return x >>= g                 [def. >=>]    
     = \x -> Ok x >>= g                     [def. return]
     = \x -> g x                            [def. >>=]
     = g

     More generally:
     return >=> g
      = \x -> return x >>= g                [def. >=>]
      = \x -> g x                           [3rd monad law (TCOP p35)]
      = g                                   [eta rule]

(ml2)  (g >=> return) = g
    To prove this for Error, we have two cases
    (case 1)  g y = Error s
    or
    (case 2)  g y = Ok z
    (case 1)  prove: (g >=> return) y = g y = Error s
              (g >=> return) y
               = (\p -> g p >>= return) y   [def. >=>]
               = g y >>= return             [beta rule]
               = Error s >>= return         [assumption]
               = Error s                    [def. >>=]
    (case 2) prove: (g >=> return) y = g y = Ok z
             (g >=> return) y               
              = (\p -> g p >>= return) y    [def. >=>]
              = g y >>= return              [beta rule]
              = Ok z >>= return             [assumption]
              = Ok z                        [def. >>=]

    The general proof from the monad laws:
    g >=> return 
     = \x -> g x >>= return                 [def. >=>]
     = \x -> g x                            [2nd monad law (TCOP p35)]
     = g                                    [eta rule]

(ml3)  (g >=> h) >=> k = g >=> (h >=> k)

    The general proof from the monad laws:
    Left side:
        (g >=> h) >=> k
         = (\x -> g x >>= h) >=> k          [def. >=>]
         = \y -> (\x -> g x >>= h) y >>= k  [def. >=>]
         = \y -> (g y >>= h) >>= k          [beta rule]
    Right side:
        g >=> (h >=> k)
         = g >=> (\x -> h x >>= k)          [def. >=>]
         = \y -> g y >>= (\x -> h x >>= k)  [def. >=>]
         = \y -> (g y >>= h) >>= k          [third monad law (TCOP p. 35)]
-}

-- 6.

-- (a).

iSortCount ls = iSort 0 ls

iSort :: Ord a => Int -> [a] -> (Int, [a])
iSort n [] = (n,[])
iSort n (x:xs) = let (n', xs') = iSort n xs
                  in ins (n+n') x xs'
 
ins n x [] = (n,[x])
ins n x (y:ys)
  | x <= y    = (n+1, x : y : ys)
  | otherwise = let (n', ys') = ins (n+1) x ys
                 in (n', y : ys')

-- (b).

iSortCountM ls = iSortM 0 ls

iSortM n [] = return (n,[])
iSortM n (x:xs) = iSortM n xs >>= \(n',xs') ->
                  insM (n+n') x xs'

insM n x [] = return (n,[x])
insM n x (y:ys)
 | x <= y    = return (n+1, x:y:ys)
 | otherwise = insM (n+1) x ys >>= \(n',ys') ->
               return (n', y:ys')

-- Test cases.

test_tree = Node 1 
                [Node 2 
                    [Node 4 [], 
                     Node 5 []], 
                 Node 3
                    [Node 6 [],
                     Node 7 []]]
test_treesum = foldGT (+) 0 test_tree
test_foldflat = foldGT (:) [] test_tree
test_treesum' = foldGT' (+) 0 test_tree
test_foldflat' = foldGT' (:) [] test_tree
test_folds = 
    (test_treesum == test_treesum') && (test_foldflat == test_foldflat')


evalM_t0 = evalM (BinOp Div (Val 3) (Val 2))
evalM_t1 = evalM (BinOp Div (Val 3) (Val 0))
evalM_t2 = evalM (BinOp Mul (BinOp Div (Val 4) (Val 2)) (Val 3))
evalM_t3 = evalM (BinOp Mul (BinOp Div (Val 4) (Val 0)) (Val 3))
evalM_t4 = evalM (BinOp Div (Val 12) (BinOp Mul (Val 3) (Val 2)) )
evalM_t5 = evalM (BinOp Div (Val 12) (BinOp Mul (Val 3) (Val 0)) )
evalM_t6 = evalM (BinOp Mul (Val 8) (BinOp Div (Val 2) (Val 0)))

iSortCount_t0 = iSortCount ([] :: [Int]) -- 0
iSortCount_t1 = iSortCount [1]           -- 0
iSortCount_t2 = iSortCount [1,2]         -- 1
iSortCount_t3 = iSortCount [2,1]         -- 1
iSortCount_t4 = iSortCount [2,3,1,5,4]   -- 6
iSortCount_t5 = iSortCount [1,2,3,4,5]   -- 4
iSortCount_t6 = iSortCount [5,4,3,2,1]   -- 10
