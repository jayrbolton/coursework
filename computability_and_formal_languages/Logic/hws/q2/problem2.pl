% J Bolton
% Prolog Problem Set 2

/*
Implement the alphabetic sums problem
Alphabetic sums:
Puzzles that give a sum of two numbers, but with the digits  replaced by
letters, frequently appear in papers and magazines. Different letters in these
puzzles are meant to denote different digits. For example:

   CROSS
 + ROADS
 -------
  DANGER

The carry has to be either 0 or 1
Either or both of the terms have to be >=50,000
Either C or R or both are >=5
D = 1

*/

% I was able to figure out most of this except the pick() predicate, which I
% took from Sherri.

digit(0). digit(1). digit(2). digit(3). digit(4). digit(5). digit(6). digit(7).
digit(8). digit(9).

pick(A, Used, [A|Used]) :- var(A), digit(A), not(member(A,Used)).
pick(A, Used, Used) :- not(var(A)), member(A,Used).

sum(CarryIn, X, Y, Sum, CarryOut) :- 
    TotalSum is (CarryIn + X + Y),
    Sum is TotalSum mod 10,
    CarryOut is TotalSum // 10.


solve([C,R,O,S,S], [R,O,A,D,S], [D,A,N,G,E,R]) :- 
    pick(C, [], NU1),
    pick(R, NU1, NU2),
    pick(O, NU2, NU3),
    pick(S, NU3, NU4),
    pick(A, NU4, NU5),
    pick(D, NU5, NU6),
    pick(N, NU6, NU7),
    pick(G, NU7, NU8),
    pick(E, NU8, _),
    sum(0,S,S,R,Carry1),
    sum(Carry1,S,D,E,Carry2),
    sum(Carry2,O,A,G,Carry3),
    sum(Carry3,R,O,N,Carry4),
    sum(Carry4,C,R,A,D).

/*
This took a very long time to compute!
?- solve([C,R,O,S,S],[R,O,A,D,S],[D,A,N,G,E,R]).
C = 9,
R = 6,
O = 2,
S = 3,
A = 5,
D = 1,
N = 8,
G = 7,
E = 4 ;
false.
*/

/*
Write a match predicate that determines if the first argument (a pattern of
some kind) matches the second argument (a list to be checked against). So:
match[X,a,Y], [here, is, a, duck])
X = [here, is]
Y = [duck]

I read Sherri's solution before trying it, so I tried to rewrite the solution
again without looking.
*/

match([X], Ys):- var(X), X=Ys.
match([X|Xs], [X|Ys]) :- not(var(X)),
                         match(Xs,Ys).
match([X|[Y|Xs]], Ys) :- var(X),
                         not(var(Y)), 
                         prefix(X, Y, Ys, Zs), 
                         match([Y|Xs], Zs).

prefix([], Z, [Z|Ys], [Z|Ys]).
prefix(X, Z, [Y|Ys], Zs) :- Y \= Z,
                            X=[Y|Z1],
                            prefix(Z1, Z, Ys, Zs).

/*
?- match([X,was,Y,shadow,Z,waxwing,Q],[i,was,the,shadow,of,the,waxwing,slain]).
X = i,
Y = the,
Z = [of, the],
Q = [slain] ;
X = i,
Y = [the],
Z = [of, the],
Q = [slain] ;
X = [i],
Y = the,
Z = [of, the],
Q = [slain] ;
X = [i],
Y = [the],
Z = [of, the],
Q = [slain] ;
false.
*/
