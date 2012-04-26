-- J Bolton
-- Assignment 6, quarter 2


import Control.Monad.State
import Control.Monad.Writer
import Data.List (unfoldr)

--1.
fib n = take (n+1) $ f 0 1    where f y z = y : f z (y+z)
fib' n = take (n+1) $ unfoldr (\(a,b) -> Just(a,(b,a+b))) (0,1) --sweet!

--2.
fib'' n = 0:[evalState (f x) (0,1) | x <- [0..n-1]]
     where f c = get >>= \(x,y) -> 
               if (c > 0) then (put (y,x+y) >> (f (c-1)))
                          else return y

fib''' n = fst $ execState (replicateM n $
           get >>= \(x,y) ->
           put (y,x+y)) (0,1)


test_fib = let (x,y,z) = (fib 999, fib' 999, fib'' 999)
           in x == y && x == z && y == z
-- takes a second to run...

--3.
-- I really want to try heapsort sometime (I've never done it), but don't think I have time

qsort_count ls = qsort 0 ls
qsort n []     = (n,[])
qsort n (x:xs) = let l0 = filter (<x) xs
                     l1 = filter (>=x) xs
                     c0 = n+(length (xs))*2
                     (c1, l2) = qsort 0 l0
                     (c2, l3) = qsort 0 l1
                  in (c0+c1+c2, l2 ++ [x] ++ l3)

-- Wow, that was much more of a brain bender than I expected

--4.

qsortM n [] = return (n,[])
qsortM n (x:xs) = qsortM 0 (filter (<x) xs) >>= \(c1, l1) ->
                  qsortM 0 (filter (>=x) xs) >>= \(c2, l2) ->
                  let c0 = n+(length (xs))*2
                  in return (c0+c1+c2, l1++[x]++l2)
