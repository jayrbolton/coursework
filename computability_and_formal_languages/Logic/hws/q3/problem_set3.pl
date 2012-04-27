% J Bolton

% Knight's tour.

move(S1,S2,E1,E2) :- (abs(S1-E1)+abs(S2-E2)) =:= 3.

tour(Size) :-
    findall((X,Y), (between(1,Size,X),between(1,Size,Y)), Poss),
    poss_with_froms(Poss, Size, [Start-_|PFs1]),
    Ts = [Start|Rest],
    tour(PFs1, Start, Rest, []),
    enumerate(Ts, 1, PNs),
    print_rows(Size, Size, PNs),
    nl.

print_rows(Row, Size, PNs) :-
( Row < 1 -> true
; print_cols(1, Row, Size, PNs),
nl,
Row1 is Row - 1,
print_rows(Row1, Size, PNs)
).

print_cols(Col, Row, Size, PNs) :-
( Col > Size -> true
; memberchk((Col,Row)-Num, PNs),
( Num < 100 -> write(' ') ; true),
( Num < 10 -> write(' ') ; true),
format(" ~w ", [Num]),
Col1 is Col + 1,
print_cols(Col1, Row, Size, PNs)
).

enumerate([], _, []).
enumerate([P|Ps], N, [P-N|PNs]) :-
N1 is N + 1,
enumerate(Ps, N1, PNs).


tour(PFs0, CurrPos, Ps0, Ps) :-
( PFs0 == [] -> Ps0 = Ps
; Ps0 = [NextPos|Rest],
findall(Next, nextpos(PFs0,CurrPos,Next), Nexts),
keysort(Nexts, Nexts1),
member(_-NextPos, Nexts1),
delete(PFs0, NextPos-_, PFs1),
delete_from_all(PFs1, CurrPos, PFs2),
tour(PFs2, NextPos, Rest, Ps)
).

nextpos(PFs, CurrPos, LF-NextPos) :-
member(NextPos-Froms, PFs),
member(CurrPos, Froms),
length(Froms, LF).


delete_from_all([], _, []).
delete_from_all([P-Froms|Ds], Pos, [P-Froms1|Rest]) :-
delete(Froms, Pos, Froms1),
Froms1 \== [],
delete_from_all(Ds, Pos, Rest).

poss_with_froms([], _, []).
poss_with_froms([P|Ps], Size, [P-Fs|Rest]) :-
findall(F, valid_move(Size, P, F), Fs),
poss_with_froms(Ps, Size, Rest).
