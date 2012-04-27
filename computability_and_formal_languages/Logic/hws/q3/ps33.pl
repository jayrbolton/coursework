move(A,B,C,D) :- move(C,D,A,B).
move(A,B,C,D) :- move(A,D,C,B).
move(A,B,C,D) :- move(B,A,D,C).
move(A,B,C,D) :- move(C,B,A,D).


