/*
TODO: Fix duplicated elements
*/

% J Bolton

/*
 1. Wolves, foxes, birds, caterpillars, and snails are animals and
    there are some of each of them.
 2. Also there are some grains, and grains are plants.
 3. Every animal either likes to eat all plants or all animals much smaller
    than itself that like to eat some plants.
 4. Caterpillars and snails are much smaller than birds, which are
    much smaller than foxes, which in turn are much smaller than wolves. 
 5. Wolves do not like to eat foxes or grains, while birds
    like to eat caterpillars but not snails.  Caterpillars and snails like to
    eat some plants. 
 7. Therefore, there is some animal that likes to eat a grain-eating animal.
*/

%1.
wolf(w).
fox(f).
bird(b).
caterpillar(c).
snail(s).

%2.
grain(g).
plant(X) :- grain(X).

%3.
herbivore(X) :- eats(X,Y), plant(Y).
carnivore(X) :- eats(X,Y), eats(Y,Z), eats(Z,plant(_)).

%4.
smaller(X,Y) :- caterpillar(X), bird(Y).
smaller(X,Y) :- snail(X), bird(Y).
smaller(X,Y) :- bird(X), fox(Y).
smaller(X,Y) :- fox(X), wolf(Y).

%5.
eats(X,Y) :- wolf(X), not(fox(Y)), not(grain(Y)).
eats(X,Y) :- bird(X), caterpillar(Y), not(snail(Y)).
eats(X,Y) :- caterpillar(X), plant(Y). %required by 3.
eats(X,Y) :- snail(X), plant(Y). %required by 3.
eats(_,Y) :- eats(Y,Z), eats(Z,grain(_)).

% ?- eats(X,Y).
% X = b,
% Y = c;

% append, union, intersect, member, difference

/* In Haskell:
   append [] ys = ys
   append (x:xs) ys = x : (xs ++ ys)
*/

append([], Ys, Ys).
append([X | Xs], Ys, [X | Zs]) :- append(Xs, Ys, Zs).

/* In Haskell:
   union xs ys = nub xs ++ [y | y <- (nub ys), not $ y `elem` xs]
*/

union(Xs, Ys, Result) :- append(Xs, Ys, App), noDups(App, Result).

noDups([], []).
noDups([X | Xs], Ys) :- elem(X,Xs), noDups(Xs,Ys).
noDups([X | Xs], [X | Ys]) :- not(elem(X,Xs)), noDups(Xs,Ys).

/* In Haskell:
   elem _ [] = False
   elem x (y:ys)
    | x == y    = True
    | otherwise = elem x ys
*/

elem(X, [X | _]).
elem(X, [_ | Ys]) :- elem(X, Ys).
elem(_, []).

/* In Haskell:
   intersect xs ys = [z | z <- (nub xs), z `elem` (nub ys)]
*/

intersection(Xs, Ys, Zs) :- noDups(Xs, NXs), noDups(Ys, NYs)
                            , findIntersect(NXs, NYs, Zs).
findIntersect([], _, []).
findIntersect([X | Xs], Ys, Zs) :- not(elem(X, Ys)), findIntersect(Xs, Ys, Zs).
findIntersect([X | Xs], Ys, [X | Zs]) :- elem(X, Ys), findIntersect(Xs, Ys, Zs).

/* In Haskell:
   difference xs ys = [z | z <- (nub xs), not $ z `elem` (nub ys)]
*/

difference([],_,[]).
difference([X | Xs], Ys, Zs) :- elem(X, Ys), difference(Xs, Ys, Zs).
difference([X | Xs], Ys, [X | Zs]) :- not(elem(X, Ys)), difference(Xs, Ys, Zs).
