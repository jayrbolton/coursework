:- dynamic(interpret/2).

capital_of(california, sandiego).
capital_of(washington, olympia).
capital_of(oregon, salem).

numb:- findall(X, capital_of(X,_), B),
		 numb(1, B).

numb(_, []):- findall((X,Y), interpret(X,Y), B), printMenu(B).
numb(X, [Y|Ys]):-
	assertz(interpret(X,Y)),
	Z is X+1,
	numb(Z, Ys).

printMenu([]):- nl.
printMenu([(X,Y)| XsandYs]):-
	write(X), write(' '), write(Y), nl, printMenu(XsandYs).

% Following is correct but no good way to terminate.

number(X, Ss) :-
	capital_of(A, _),
	not_elem(A, Ss),
	assertz(interpret(X,A)),
	Y is X+1,
	number(Y, [A|Ss]).

not_elem(_, []).
not_elem(X, [Y|Ys]):- X\=Y, not_elem(X, Ys).

