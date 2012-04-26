% J Bolton

% Knight's tour.
% This an exhaustive version with very little pruning. I'll go back and add
% heuristics if I have spare time. This one is quite fast for an exhaustive
% algorithm and I'm not sure why. It will compute tour(10) in half a second.
% I'm not totally sure it's right

validmove((FromX,FromY),(ToX,ToY),Squares) :- 
    member((ToX,ToY),Squares),
    (abs(FromX-ToX)+abs(FromY-ToY)) =:= 3.
    
tour(N) :-
    N>4,
    findall((X,Y), (between(1,N,X),between(1,N,Y)),Squares),
    N2 is N*N,
    tour(N2, (1,1), Squares, [(1,1)], Path),
    write(Path), 
    nl.
    
tour(N2, _, _, Visited, Visited) :-
    length(Visited,N2).

tour(N, From, Squares, Visited,Path) :-
    validmove(From,To,Squares),
    \+ member(To, Visited),        % goal is not provable
    tour(N,To,Squares,[To|Visited],Path). 
