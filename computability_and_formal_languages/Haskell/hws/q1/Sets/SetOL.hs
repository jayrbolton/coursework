
-- J Bolton

module SetOL (Set, null, member, empty, fromList, toList, insert, delete, sort, union, intersection, crossproduct, difference) where

import qualified Data.List as List (nub, delete, insert, sort, null)

import Prelude hiding (null)

newtype Set a = Set [a]      

instance (Eq m) => Eq (Set m) where
    (Set s1) == (Set s2)    = s1 == s2

instance (Show m) => Show (Set m) where
    show (Set s) = show s    

fromList :: (Ord a) => [a] -> Set a
toList :: Set a -> [a]
delete :: (Eq a) => a -> Set a -> Set a
insert :: (Ord a) => a -> Set a -> Set a
member :: (Eq a) => a -> Set a -> Bool
sort :: (Ord a) => Set a -> Set a
null :: Set a -> Bool
empty :: Set a
union :: (Ord a) => Set a -> Set a -> Set a
intersection :: (Eq a) => Set a -> Set a -> Set a
crossproduct :: Set a -> Set b -> Set (a,b)
difference :: (Eq a) => Set a -> Set a -> Set a

fromList ls = Set (List.sort $ List.nub ls)
toList (Set ls) = ls 
delete x (Set ls) = Set (List.delete x ls)
member x (Set ls) = elem x ls

insert x (Set s) 
 | x `elem` s       = Set s
 | otherwise        = Set (List.insert x s)

sort (Set s) = Set (List.sort s)
null (Set s) = List.null s
empty = Set []

union (Set s1) (Set s2) = Set (List.sort $ List.nub $ s1++s2)

intersection (Set s1) (Set s2) = Set (foldr f [] s1)
    where f x xs = if (x `elem` s2) then x:xs else xs

crossproduct (Set s1) (Set s2) = Set (zip s1 s2)

difference (Set s1) (Set s2) = Set (foldr f [] (s1++s2))
    where f x xs = if (x `elem` xs) then xs else x:xs
