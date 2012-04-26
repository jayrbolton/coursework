J Bolton
CSF Haskell Midterm

1.

> mzip :: [a] -> [b] -> [(a, b)]
> unmzip :: [(a, b)] -> ([a], [b])

2.

a.

mzip (2:[0, 1]) ("abc":["ab1", "2tm"]) = (2,"abc"):(mzip [0, 1] ["abc", "2tm"])
unmzip [(0, "hot"), (1, "pad"), (2, "mat")] = (xs, ys)
	where 
	xs = [ a | (a, b) <- [(0, "hot"), (1, "pad"), (2, "mat")] ]
	ys = [ b | (a, b) <- [(0, "hot"), (1, "pad"), (2, "mat")] ]
pp [(2, "abc"), (0, "ab1"), (1, "2tm")] = 
	concat [ snd x | x <- [(2, "abc"), (0, "ab1"), (1, "2tm")] ]
hh ([0, 1, 2], ["hot", "pad", "mat"]) = snd ([0, 1, 2], ["hot", "pad", "mat"])
hh ([0, 1, 2], ["hot", "pad", "mat"]) = ["hot", "pad", "mat"]

b. 

v1 = "abcab12tmhotpadmat"

3.

ss 2 (6:[4, 3]) = ( 6 : fst (ss 1 [4, 3]), snd (ss 1 [4, 3]))
	ss 1 (4:[3]) = ( 4: fst (ss 0 [3]), snd (ss 0 [4]))
		ss 0 [3] = ([], [4])
	ss 1 (4:[3]) = ( 4: fst ([], [4]), snd ([], [4]))
ss 2 (6:[4, 3])
= (6 : fst (4: fst ([], [4]), snd ([], [4])), snd (4: fst ([], [4]), snd ([], [4])))
= (6 : fst ((4 : []), [4]), snd (4: [], [4]))
= (6 : fst ([4], [4]), snd ([4], [4]))
= ( 6 : [4], [4] ) 
v2 = ([6, 4], [4])

4. 

> ss :: Int -> [a] -> ([a], [a])
> ss 0 xs = ([], xs)
> ss _ []     = ([], [])
> ss n (x:xs) = ( x : fst (recall n xs), snd (recall n xs) )
> 	where 
> 	recall n xs = ss (n-1) xs

5. 

> yy m n
>  | m == n 	= 0
>  | m < n 	= (-1)
>  | otherwise  = 1

6. 

v5 = [5, 4, 3]
tt takes the first n of any given list

7. 

v6 = 2

dd takes the tail of the list at 

8.

v7 = ([5, 4, 3], [2])

sa tuples the first n elements of the list with the nth element

9. 


"catfood"

my work:
zz = (2, back), (0, at), (1, it)
qq (2, back): (0, at), (1, it) = [(gg 2, "back")] ++ qq (0, at), (1, it)
gg 2, "b:ack" = gg 1 ack
gg 0 a:ck = a
qq (2, back): (0, at), (1, it) = [c] ++ qq [(0, 'at'), (1, 'it')]
qq (0, 'at'): [(1, 'it')] = [a] ++ [a] ++ [t]
["aat"] ++ "f" ++ 
rr 2 (gg 2 "slow")
rr 2 'o' = 'o' : rr 1 'o'
rr 1 'o' = 'o' : 'o' : rr 0 'o'
rr 0 'o' = 'o' : 'o' : ""
['c', 'a', 't'] ++ "f" ++ "oo" ++ "d"

