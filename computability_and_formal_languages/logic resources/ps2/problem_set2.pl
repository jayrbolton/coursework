% J Bolton 
% Problem set 2

% I did not manage to figure this out myself, so I'll just use Sherri's version
% and prove that I understand it by doing a unification tree at the bottom.

digit(0).
digit(1).
digit(2).
digit(3).
digit(4).
digit(5).
digit(6).
digit(7).
digit(8).
digit(9).

pick(A, Used, [A|Used]) :- var(A), digit(A), not(member(A,Used)).
pick(A, Used, Used) :- not(var(A)), member(A,Used).

digSum(C,D1,D2,S1,NC):-
	S is (C + D1 + D2),
	S1 is S mod 10,
	NC is S // 10.

solve([A,B,C,D,E], [F,G,H,I,J], [K,L,M,N,O, P]):-
	pick(A, [], NU1),
	pick(B, NU1, NU2),
	pick(C, NU2, NU3),
	pick(D, NU3, NU4),
	pick(E, NU4, NU5),
	pick(F, NU5, NU6),
	pick(G, NU6, NU7),
	pick(H, NU7, NU8),
	pick(I, NU8, NU9),
	pick(J, NU9, NU10),
	pick(P, NU10, NU11),
	pick(O, NU11, NU12),
	pick(N, NU12, NU13),
	pick(M, NU13, NU14),
	pick(L, NU14, NU15),
	pick(K, NU15, NU16),
	digSum(0,E,J,P,C1),
	digSum(C1, D,I,O,C2),
	digSum(C2, C,H,N,C3),
	digSum(C3, B,G,M,C4),
	digSum(C4, A,F,L,K).


/* Above is totally a generate and test. Can reverse the digSum */
/* to only try values that have the right sum characteristics. */
/* ?- solve([C,R,O,S,S], [R,O,A,D,S], [D,A,N,G,E,R]).
C = 9,
R = 6,
O = 2,
S = 3,
A = 5,
D = 1,
N = 8,
G = 7,
E = 4 .

?-
*/




match([X], YS):- var(X), X=YS.
match([X|[Y|XS]], YS):- var(X), not(var(Y)), prefix(X, Y, YS, RYS), match([Y|XS], RYS).
match([X|XS], [X|YS]):- not(var(X)), match(XS,YS).

prefix([], Z, [Z|YS], [Z|YS]).
prefix(X, Z, [Y|YS], RYS):- Y \= Z, X=[Y|Z1], prefix(Z1, Z, YS, RYS).
