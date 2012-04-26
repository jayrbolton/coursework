suc(1,2).
suc(2,3).
suc(3,4).
suc(4,5).
suc(5,6).
suc(6,7).
suc(7,8).

add(X,1,Z) :- suc(X,Z).
add(X,Y,Z) :- suc(A,Y), suc(B,Z), add(C,A,B).
