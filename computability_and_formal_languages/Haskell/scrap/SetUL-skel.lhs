SetUL-skel.lhs   Unordered list implementation of Sets using newtype
2010.11.10 Neal Nelson - Upgraded for compatability with Data.Set
1/1/04  Neal Nelson

-- WARNING WARNING this code is just a skeleton and will not run as-is

Notes:
  Sets are implemented as unordered lists with possible duplicates.
  Added instance declarations for Show and Eq. We can't use deriving because
    equality will require sorting and we don't want to show with duplicates.
  This Set module is intended to be compatable with Data.Set
  The toList function can't be implemented without context (Ord a) like it
    is in Data.Set because otherwise we would have to list the set with
    duplicates and that would seem unreasonable. This means is is probably
    possible to construct an example that will behave differently when
    importing SetUL vs Data.Set. Although maybe not, because ultimately
    Data.Set requires (Ord a) for its set elements.


> module SetUL (Set, null, member, empty, fromList, toList, insert, delete)
>      where

> import Prelude hiding (null)


> newtype Set a = Set [a]

-- FILL IN Instance Declarations for Eq and Show


-- FILL IN the Set functions

> null :: Set a -> Bool

> member  :: Ord a => a -> Set a -> Bool

> empty :: Set a

> fromList :: Ord a => [a] -> Set a

> toList :: Ord a => Set a -> [a]   -- Data.Set doesn't have (Ord a) context

> insert  :: Ord a => a -> Set a -> Set a

> delete  :: Ord a => a -> Set a -> Set a



------------ Subsidiary functions (strictly local to this module) ------------


-- FILL IN support functions


Remove duplicates and sort a list

> remDupSort :: Ord a => [a] -> [a]



