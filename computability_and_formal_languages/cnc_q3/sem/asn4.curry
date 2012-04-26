-- J Bolton
-- Curry exercises, part 1

{-
 Start with Exercises 2,8 in the Curry Tutorial (the other exercises 1,3-7 are
 mostly just Haskell). 
-}

-- Ex. 2

data Worker = Alex | Bert | Chuck
data Task = Cut | Polish

cuts(Alex) = success
cuts(Bert) = success

polishes(Bert) = success
polishes(Chuck) = success

assign Cut | cuts(x) = x where x free
assign Polish | polishes(x) = x where x free

-- Ex. 8

data Card = Card Rank Suit 
data Rank = Ace | Two | Three | Four | Five | Six | Seven | Eight | Nine | Jack
            | Queen | King
data Suit = Hearts | Diamonds | Clubs | Spades


fh hand | ranksOf hand =:= x++a:y++b:z
        & (x++y++z) =:= [r1,r1,r1]
        & [a,b] =:= [r2,r2]
        = (r1, r2)
        where 
        a,b,x,y,z,r1,r2 free
        ranksOf hand = foldr (\(Card r _) cs -> r:cs) [] hand
        
{-
Also write a program to find all permutations of a list using pure functional
and then again using non-determinism. Write a program to find all suffixes of a
given prefix of a given list.  
-}

permute [] = [[]]
permute (x:xs) = [ l++x:r | ps <- permute xs, (l,r) <- splitAll ps]

splitAll xs = [split n xs | n <- [0..(length xs)]]

split n xs = let l = take n xs
                 r = drop n xs
              in (l, r)

permute' [] = [[]]
permute' (x:xs) = foldr (\p ps -> findall (\zs -> zs =:= insert x p) ++ ps) [] l1
    where l1 = permute' xs

insert x xs | l++r =:= xs = l++x:r
    where l,r free

suffixes xs = findall (\zs -> zs =:= suffixes' xs)

suffixes' xs | p++s =:= xs & (length s > 0) =:= True = s
    where p,s free

