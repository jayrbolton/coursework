% J Bolton
% AI Programming, quarter 3, week 6

/* Contents:
 * Ch 6 exercises
 * Binary search tree with insert, find, remove, etc.
 * Tree problems from GATech (CS3411)
 * Sticks problem (run with go(X).)
 * Missionaries and cannibals (run with goMC.)
 */

% Ch 6 exercises

/*
6.1     fail.
6.2     success.
6.3a    fail.
6.3b    success.
6.3c    success.    
6.3d    c = 3

*/

% Binary tree

binaryTree(nil).
binaryTree(tree(_,L,R)) :-
    binaryTree(L), binaryTree(R).

treeMember(X,tree(X,_,_)).
treeMember(X,tree(_,Left,Right)) :- treeMember(X,Left) ; treeMember(X,Right).

preorder(nil,[]).
preorder(tree(X,L,R),Xs) :- 
    preorder(L,Ls), preorder(R,Rs), 
    append([X|Ls],Rs,Xs).

% 1.
inorder(nil,[]).
inorder(tree(X,L,R),Xs) :-
    inorder(L,Ls),
    inorder(R,Rs),
    append(Ls,[X|Rs],Xs).

% 2.
substitute(_,_,nil,nil).
substitute(X,Y,tree(X,L,R),tree(Y,L1,R1)) :-
   substitute(X,Y,L,L1),
   substitute(X,Y,R,R1).
substitute(X,Y,tree(Z,L,R),tree(Z,L1,R1)) :-
    substitute(X,Y,L,L1),
    substitute(X,Y,R,R1).

% 3.
subtree(T,T).
subtree(S,tree(_,L,R)) :-
    subtree(S,L),
    subtree(S,R).

% 4.
numTree(nil).
numTree(tree(N, L, R)) :- 
    number(N),
    numTree(L), numTree(R).

sumTree(numTree(nil), 0).
sumTree(numTree(tree(N,L,R)), Sum) :-
    sumTree(numTree(L), LSum),
    sumTree(numTree(R), RSum),
    Sum is N + LSum + RSum.

ordered(numTree(nil)).
ordered(numTree(tree(N,L,R))) :-
    orderedLeft(N,numTree(L)),
    orderedRight(N,numTree(R)),
    ordered(numTree(L)),
    ordered(numTree(R)).

orderedLeft(_,numTree(nil)).
orderedLeft(N,numTree(tree(N1,L,R))) :-
    N < N1,
    orderedLeft(N,numTree(L)),
    orderedRight(N,numTree(R)).

orderedRight(_,numTree(nil)).
orderedRight(N,numTree(tree(N1,L,R))) :-
    N > N1,
    orderedLeft(N,numTree(L)),
    orderedRight(N,numTree(R)).

% 6.
insertOTree(X, T, T1) :-
    ordered(T),
    iot(X,T,T1).

iot(N, numTree(nil), numTree(tree(N,nil,nil))).
iot(N, numTree(tree(N1,L,_)),T1) :-
    N < N1 , iot(N,numTree(L),T1).
iot(N, numTree(tree(N1,_,R)),T1) :-
    N > N1, iot(N,numTree(R),T1).

% Sticks puzzle.

go(Search):-
    sticks([i,i,i,i,i,i,i,i],Search).

sticks(Initial_state,Search):-
    agenda_search(Search, 0, [[Initial_state]],[Count,Solution]),
    length(Solution,Length),
    Steps is Length-1,
    reverse(Solution,[],Reverse),
    write(Search), write(' first search expands '), write(Count), 
    write(' nodes to find a solution at depth '), write(Steps), nl,
    write_list(Reverse).

agenda_search(_,Count,[[[x,x,x,x]|Path]|_],[Count,[[x,x,x,x]|Path]]).

agenda_search(Search, Count, [[State|Path]|Rest], Solution):-
    write(State), nl,
    Count1 is Count + 1,
    findall([NewState,State|Path],applymove(State, NewState),Successors),
    update_agenda(Search, Rest, Successors, NewAgenda),
    agenda_search(Search, Count1, NewAgenda, Solution).

applymove(State, NewState):-
    jump_right2(State, NewState).

applymove(State, NewState):-
    jump_left2(State, NewState).

applymove(State, NewState):-
    jump_x(State, NewState).

update_agenda(breadth, Rest, Successors, NewAgenda):-
    append(Rest, Successors, NewAgenda).

update_agenda(depth, Rest, Successors, NewAgenda):-
    append(Successors, Rest, NewAgenda).

% This predicate should 
% match the condition that your state includes four 'i's 
% in a row and replaces them with two 'i's and a 'x'.

sublist(S,L):-append(_,S,P),append(P,_,L).

jump_right2(State, NewState) :- 
    append(P,Suffix,State),
    append(Prefix,[i,i,i,i],P),
    append([i,i,x], Suffix, Z),
    append(Prefix, Z, NewState).

% This does the reverse of jump_right2: it matches 
% four 'i's in a row and replaces them with an 'x' 
% and two 'i's. I've included reverse/3 for you to use.

jump_left2(State, NewState) :- 
    append(P,Suffix,State),
    append(Prefix,[i,i,i,i],P),
    append([x,i,i], Suffix, Z),
    append(Prefix, Z, NewState).

% This matches i,x,i and returns x,x 
% (i.e. it jumps two crossed sticks). 
% Direction is not important as the initial 
% pattern and resulting pattern is the same.

jump_x(State, NewState) :- 
    append(P,Suffix,State),
    append(Prefix,[i,x,i],P),
    append([x,x], Suffix, Z),
    append(Prefix, Z, NewState).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Utility predicates

/* write_list/1 is a general operator that can be used to print elements of a
 * list in order, one line at a time */

write_list([]).
write_list([H|T]):-
write(H), nl,
write_list(T).

append([],Y,Y).
append([H|T],Y,[H|O]):-
append(T,Y,O).

reverse([],X,X).
reverse([H|T],Y,O):-
reverse(T,[H|Y],O).
%   File   : MANDC
%   Author : Paul Brna
%   Updated: 23 September 2004 by Tim Smith
%   Purpose: Missionaries and Cannibals by Lawrence Byrd


goMC:-
    gofrom([3,3,1], [0,0,0], [[3,3,1]]).

gofrom([0,0,0], [3,3,1],_).

gofrom(Left, Right, PreviousLeftStates):-
    applymoveMC(Left, Right, Direction, Comment, NewLeft, NewRight),
    safe(NewLeft),
    safe(NewRight),
    \+member(NewLeft, PreviousLeftStates),
    gofrom(NewLeft, NewRight,[NewLeft|PreviousLeftStates]),
    write(NewLeft), write(Direction), write(NewRight), write(' '), write(Comment), nl.

applymoveMC(Left, Right, '-->', Comment, NewLeft, NewRight):-
    boathere(Left),
    moveload(Left, Right, Comment, NewLeft, NewRight).

applymoveMC(Left, Right, '<--', Comment, NewLeft, NewRight):-
    boathere(Right),
    moveload(Right, Left, Comment, NewRight, NewLeft).

boathere([_,_,1]).

moveload(Source, Target, Comment, NewSource, NewTarget):-
    move(BoatLoad,Comment),
    possibletomove(Source, BoatLoad),
    performthemove(Source, Target, BoatLoad, NewSource, NewTarget).

/* these are the utilities */

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Add move/1 here:

move([1,1,1],'Move 1 Missionary and 1 Cannibal.').
move([0,1,1],'Move 0 Missionaries and 1 Cannibal.').
move([1,0,1],'Move 1 Missionary and 0 Cannibals.').
move([0,2,1],'Move 0 Missionaries and 2 Cannibals.').
move([2,0,1],'Move 2 Missionaries and 0 Cannibals.').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Add possibletomove/2 here:

possibletomove([S1,S2,B],[M1,M2,B]) :- M1 =< S1, M2 =< S2.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Add performthemove/5 here:

performthemove([S1,S2,B1],[T1,T2,B2],[M1,M2,_],[Ns1,Ns2,B2],[Nt1,Nt2,B1]) :-
    Ns1 is (S1-M1),
    Ns2 is (S2-M2),
    Nt1 is (T1+M1),
    Nt2 is (T2+M2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Add safe/1 here:

safe([M,C,_]) :- M >= C ; M = 0.
