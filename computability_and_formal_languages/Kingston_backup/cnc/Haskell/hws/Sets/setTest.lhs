
JBolton
NOTE: I have modified s5 and t16-18 slightly to reflect some of my design decisions

setTest.lhs - Set Module tests

Should work with any properly designed Set module

2010.11.10 Neal - Should also work with Data.Set

Import your Set module 

import qualified SetUL as Set (Set,null,member,empty,fromList,toList,insert,delete,sort)

> import qualified SetOL as Set (Set,null,member,empty,fromList,toList,insert,delete,sort)

import Data.Set as Set (Set,null,member,empty,fromList,toList,insert,delete)

>-------- test cases ---------------------------------------------------------
>	
> s1 = Set.fromList [2,1,4,5,3]
> s2 = Set.delete 4 s1
> s3 = Set.insert 7 s2
> s4 = Set.insert 7 s3


> -- Empty sets need to explicitly give the element type
> s5 :: Set.Set [Int]
> s5 = Set.fromList []

> -- Hmmm, that's probably what Data.Set.empty is for.
> s5a = Set.empty

> s7 = Set.insert 5 s4
> s8 = Set.fromList [2,1,4]
> s9 = Set.fromList [1,4,2]

> t1 = sort (Set.toList s1) == [1,2,3,4,5]
> t2 = sort (Set.toList s2) == [1,2,3,5]
> t3 = sort (Set.toList s3) == [1,2,3,5,7]
> t4 = sort (Set.toList s4) == [1,2,3,5,7]
> t5 = Set.null s4 == False
> t6 = Set.null s5 == True
> t6a = Set.null s5a == True
> t7 = sort (Set.toList s7) == [1,2,3,5,7]
> t8 = sort (Set.toList s8) == [1,2,4]
> t9 = sort (Set.toList s9) == [1,2,4]
> t10 = Set.member 7 s2 == False
> t11 = Set.member 7 s3 == True
> t12 = Set.member 4 s4 == False

These won't work unless Set is an instance of the Eq class

> t13 = s8 == s9
> t14 = s3 == s4
> t15 = s1 /= s2

These won't work unless Set is an instance of the Show class and the
show function works just like the Data.Set show function.

> t16 = show (Set.sort s1) == "[1,2,3,4,5]"
> t17 = show (Set.sort s3) == "[1,2,3,5,7]"
> t18 = show (Set.sort s4) == "[1,2,3,5,7]"


> testlist = [t1,t2,t3,t4,t5,t6,t6a,t7,t8,t9
>            ,t10,t11,t12,t13,t14,t15,t16,t17,t18]
> test = and testlist

> -- toList does not insist that the set is converted to a sorted list
> sort = foldr ins [] where
>   ins x [] = [x]
>   ins x as@(y:ys) | x > y     = y : ins x ys
>                   | otherwise = x : as
