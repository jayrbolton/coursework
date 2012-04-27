% The knight's moves.

% symmetry
ktmove(X1,X2,X3,X4) :- ktmove(X3,X4,X1,X2).

% mirroring
ktmove(X1,X2,X3,X4) :- ktmove(X1,X4,X3,X2).

% mirroring/rotation
ktmove(X1,X2,X3,X4) :- ktmove(X2,X1,X4,X3).


ktmove(X1,X2,X3,X4) :- ktmove(X3,X2,X1,X4).


2ktmove(X1, X2, X3, X4) :- ktmove(X1,X2,Y1,Y2), ktmove(Y1,Y2,X3,X4).
