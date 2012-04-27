-- J Bolton
-- Seminar, assignment 5

{-
* Program the member function. Given an element and a list, is the element in
  the list?
-}

-- member :: a -> [a] -> Success

member x xs = p++x:s =:= xs
    where p,s free

{-
* Given a list, return a duplicate element in the list.
Prolog:
-}

dup xs | a++b:c++d:e =:= xs & b =:= d = b
    where a,b,c,d,e free

{-
* Given a list and two specific elements (in the list), find the distance
  between the two elements in the given list. What happens if one or both of the
  elements are not in the list?
-}

distance x y ls | p++x:m++y:s =:= ls = length m
    where p,m,s free

{-
* Generate all well-formed arithmetic expressions involving add,sub,mul,div and
  parentheses.

  In Prolog:
  add(x,Zero,x).
  add(x,suc(y),A) :- add(suc(x),y,A).
-}

data Nat = Zero | Suc Nat

-- This is my attempt to make add almost purely logical, but it doesn't work
add' x Zero a = x =:= a
add' x (Suc y) a = add' (Suc x) y a

add x Zero = x
add Zero y = y
add x (Suc y) = add (Suc x) y

{-
* The game of 24. Write a program to find a solution to this game, and then all
  solutions to this game.
-}

delete x []        = []
delete x (y:ys)    = if x == y then ys else y : delete x ys

game24 w x y z | (((n1,op1,n2),op2,n3),op3,n4) =:= answers
                 & member n1 nums
                 & delete n1 nums =:= nums1
                 & member n2 nums1
                 & delete n2 nums1 =:= nums2
                 & member n3 nums2
                 & delete n3 nums2 =:= nums3
                 & member n4 nums3
                 & member op1  ops
                 & delete op1 ops =:= ops1
                 & member op2  ops1
                 & delete op2 ops1 =:= ops2
                 & member op3  ops2
                 & n1 `op1` n2 `op2` n3 `op3` n4 =:= 24
                    = show answers
               where
               n1,n2,n3,n4,op1,op2,op3,nums1,nums2,nums3,ops1,ops2,ops3,answers free
               nums = [w,x,y,z]
               ops = [(+), (-), (*), div]

{-
* Sort a list by generating a permutation and then checking to see if it is
  sorted.
-}

permute [] = [[]]
permute (x:xs) = foldr (\p ps -> findall (\zs -> zs =:= insert x p) ++ ps) [] l1
    where l1 = permute xs

insert x xs | l++r =:= xs = l++x:r
    where l,r free

sort xs = foldr (\x xs -> if sorted x then x:xs else xs) [] (permute xs)

sorted [] = True
sorted [_] = True
sorted (x:y:ys)
 | x <= y     = sorted (y:ys)
 | otherwise = False

{-
* Given a message m and an integer spacing n, generate a text string t that hide
  the message m in the text string t at every n characters in t.
-}


encode m t n = concat $ intersperse (splitEvery n t) (splitEvery n m)

splitEvery n [] = []
splitEvery n ls | (length ls < n) =:= True = [ls]
splitEvery n ls | p++s =:= ls & length p =:= n = p : (splitEvery n s)
    where p,s free

intersperse xs [] = xs
intersperse [] ys = ys
intersperse (x:xs) (y:ys) = (x++y) : intersperse xs ys
