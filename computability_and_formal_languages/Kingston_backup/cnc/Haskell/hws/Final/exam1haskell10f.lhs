-- J Bolton
-- Exam rewrite using ghci

1. 
  (a) What is the type of the following function?

> sul :: (Eq a) => [a] -> [a] -> Bool
> sul ys = all (`elem` ys)


  (b) What does the function in part (a) do?
      Tests that all elements in the second list are elements of the first

  (c) Re-write the sul function using list comprehension.

> sul' xs ys = and [y `elem` xs | y <- ys]

> test_sul' = [sul' [1..10] [1..10],
>              sul' [1..10] [1..4],
>              sul' [1..4] [1..10]]

2. 
  (a) Give the type of the function curry3 that transforms a function on
triples into a curried function with three arguments.

> curry3 :: (a -> b -> c -> d) -> (a, b, c) -> d

  (b) Give the type of the function uncurry3 that transforms a curried function
on three arguments into an un-curried function that works on a triple.

> uncurry3 :: ((a, b, c) -> d) -> a -> b -> c -> d

  (c) Give the Haskell code definition of the curry3 function.

> curry3 f (x, y, z) = f x y z

  (d) Give the Haskell code definition of the uncurry3 function.

> uncurry3 f x y z = f (x, y, z)

3. 
  (a) Give the type of the following function.

> twasf :: (a -> Bool) -> [a] -> [a]
> twasf p = foldr clip [] where
>   clip x xs | p x       = x : xs 
>             | otherwise = []

  (b) What does the twasf function do?
      takeWhile -- takes the list up to where p is unsatisfied

  (c) Give a non-trivial test case for the function and show the expected
      result.
      takeWhile itself is a bit trivial... I can't think of a test that's very
      non-trivial.
     
> test_twasf = map (twasf (==True)) [[True, True, True, False],
>                                    [True, False, True, False],
>                                    [False, True, True, True],
>                                    [True, True, True, True],
>                                    [False, False, False, False]]

Expected result: [[True, True, True],[True],[],[True,True,True,True],[]]

  (d) Translate the twasf function from a foldr to recursion.

> twasf' p (x:xs)
>  | p x        = x : twasf' p xs
>  | otherwise  = []

4.
  (a) What is the type of the following function?

> masf :: (a -> b) -> [a] -> [b]
> masf f = foldr ((:) . f) [] 

  (b) What does the masf function do?
      map -- applies f to each element in a list

  (c) Give a non-trivial test case for the function and show the expected
      result.

> test_masf = masf (\x -> 3 * (x `mod` 4) - 2) [1..20]

Expected result: [1,4,7,-2,1,4,7,-2,1,4,7,-2,1,4,7,-2,1,4,7,-2]
        
  (d) Translate the masf function from a foldr to recursion.

> masf' _ [] = []
> masf' f (x:xs) = f x : masf' f xs

> test_masf' = test_masf == masf' (\x -> 3 * (x `mod` 4) - 2) [1..20]

5. 
  (a) What is the type of the following function? NOTE: The function has a bug
      that needs to be fixed in order to do what it was intended to do.

      Bug fixed:

> rd :: (Eq a) => [a] -> [a]
> rd []     = []
> rd (a:as) 
>  | a `elem` as = rd as 
>  | otherwise   = a : rd as

  (b) What is the minimum type class context for the rd function?
      Eq
  (c) What does the rd function do?
      Removes dups from a list
  (d) Give a non-trivial test case for the function and show the expected
      result.

> test_rd = map rd ["brontosaurus", "stegosaurus", "tyrannosaurus rex", "millipede"]

Expected results: ["bntoarus","tegoarus","tynoaus rex","mlipde"]

  (e) Translate the rd function from recursion to a foldr

> rd' ls = foldr (\x xs -> if (x `elem` xs) then xs else (x:xs)) [] ls

6. 
  (a) What is the type of the following function?

> itl :: Int -> (a -> a) -> [a] -> [[a]]
> itl n f = take n . iterate (map f)

  (b) What does the function in part (a) do?
      Iterates a function over each element of an entire list, returning a list
      of the iterations

  (c) Give a non-trivial test case for the function and show the expected
      result.

> test_itl = itl 5 sqrt [9.0, 99.0, 999.0]

Expected result (approximate):[[9.0,99.0,999.0],[3.0,9.9,31.6],[1.7,3,5],[1,1,2],[1,1,1]]

7.
  (a) What is the type of the following function?

> (<*>) :: [a -> b] -> [a] -> [b]
> infixl 5 <*>
> xs <*> ys = zipWith ($) xs ys

  (b) What does the app function of part (a) do? 
      applies the functions of xs to the values of ys

  (c) What is the result of the following test case of <*>?

> testApp = sum ((replicate 4 (+)) <*> [1,2..] <*> [1,2..])

      Result: 20

8. 
  (a) Code the map function and its type on lists using list comprehension

> map' f xs = [f  x | x <- xs]

  (b) Code the filter function and its type on lists using list comprehension

> filter' p xs = [x | x <- xs, p x]

  (c) Code the map function on lists using a foldr

> map'' f = foldr ((:) . f) []

  (d) Code the filter function on lists using a foldr

> filter'' f = foldr (\x xs -> if f x then x:xs else xs) []

9.
  (a) Give a Functor instance declaration for the following Tree data type.

> data Tree a = Nil | Node a (Tree a) (Tree a)

  (b) Write a recursive function flt to flatten a Tree to a list

> test_tree = Node 4 (Node 1 Nil (Node 2 (Node 9 Nil Nil) Nil))
>                    (Node 8 (Node 4 Nil Nil) (Node 3 (Node 6 Nil Nil) (Node 7 Nil Nil)))

> flt Nil = []
> flt (Node x t1 t2) = x : (flt t1) ++ (flt t2) 

*Main> flt test_tree
[4,1,2,9,8,4,3,6,7]

  (c) Give a type and code definition for a foldr function on Tree
      (call it foldrT)

> foldrT :: (a -> b -> b -> b) -> b -> Tree a -> b
> foldrT f z Nil = z
> foldrT f z (Node x t1 t2) = f x (foldrT f z t1) (foldrT f z t2)

> test_foldrT = (sum $ flt test_tree) == (foldrT (\x y z -> x+y+z) 0 test_tree)

  (d) Re-code your tree flatten function using your Tree foldrT

> flt' = foldrT (\x y z -> x: (y++z)) []

> test_flt' = flt test_tree == flt' test_tree

10.
  (a) Explain how you would use your flatten function above to flatten a Tree
      that contained a type that could itself be flattened.

flt (Node (Flattenable x) t1 t2) = flatten x ++ (flt t1) ++ (flt t2) 
Where 'Flattenable' is the data type constructor and 'Flatten' is the flatten function for that data type

  (b) Write a flatten function called fltm to flatten a Maybe type

> fltm Nothing = []
> fltm (Just x) = [x]

  (c) Now combine your fltm function on the Maybe type with your flt
      function on Tree to make a function that flattens Trees of Maybe type
      elements.

> test_tree' = Node (Just 4) (Node (Just 1) Nil (Node Nothing (Node (Just 9) Nil Nil) Nil))
>                    (Node (Just 8) (Node Nothing Nil Nil) (Node (Just 3) (Node (Just 6) Nil Nil) (Node Nothing Nil Nil)))

> fltMT = foldrT (\x y z -> (fltm x) ++ (y ++ z)) [] 

> test_fltMT = fltMT test_tree'
