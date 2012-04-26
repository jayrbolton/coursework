
-- J Bolton

> module SetUL (Set, null, member, empty, fromList, toList, insert, delete, sort, union, intersection, crossproduct, difference) where

import Prelude hiding (null)

import qualified Data.List as List (nub, delete, insert, sort, null)

newtype Set a = Set [a]        -- SAP

instance (Eq m) => Eq (Set m) where
    s1 == s2    = s1 `uleq` s2

instance (Show m) => Show (Set m) where
    show (Set s) = show s    

fromList :: (Eq a) => [a] -> Set a
toList :: Set a -> [a]
delete :: (Eq a) => a -> Set a -> Set a
insert :: (Eq a) => a -> Set a -> Set a
member :: (Eq a) => a -> Set a -> Bool
sort :: (Ord a) => Set a -> Set a
null :: Set a -> Bool
empty :: Set a
uleq :: (Eq a) => Set a -> Set a -> Bool   -- unordered set equality
union :: (Eq a) => Set a -> Set a -> Set a
intersection :: (Eq a) => Set a -> Set a -> Set a
crossproduct :: Set a -> Set b -> Set (a,b)
difference :: (Eq a) => Set a -> Set a -> Set a

fromList ls = Set (List.nub ls)
toList (Set ls) = ls 
delete x (Set ls) = Set (List.delete x ls)
member x (Set ls) = elem x ls

insert x (Set s) 
 | x `elem` s       = Set s
 | otherwise        = Set (x : s)

sort (Set s) = Set (List.sort s)
null (Set s) = List.null s
empty = Set []

uleq (Set s1) (Set s2) = foldr f True s1
    where 
    f x xs
     | x `elem` s2 = True && xs
     | otherwise   = False

union (Set s1) (Set s2) = Set (List.nub $ s1++s2)

intersection (Set s1) (Set s2) = Set (foldr f [] s1)
    where f x xs = if (x `elem` s2) then x:xs else xs

crossproduct (Set s1) (Set s2) = Set (zip s1 s2)

difference (Set s1) (Set s2) = Set (foldr f [] (s1++s2))
    where f x xs = if (x `elem` xs) then xs else x:xs
