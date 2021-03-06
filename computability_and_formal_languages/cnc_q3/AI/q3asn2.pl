% J Bolton 
% CNC, quarter 3
% AI assignment 2 

% 2a
% simple path finding

oneway(a,b).
oneway(a,d).
oneway(d,f).
oneway(e,e).
twoway(f,b).
twoway(f,e).
twoway(f,f).
twoway(b,c).

path(A,B,Path) :-
    travel(A,B,[A],Q),
    reverse(Q,Path).

travel(A,B,P,[B|P]) :-
    oneway(A,B) ; twoway(A,B) ; twoway(B,A).
travel(A,C,Visited,Path):-
    (oneway(A,B) ; twoway(A,B) ; twoway(B,A)),
    \+member(B,Visited),
    travel(B,C,[B|Visited],Path).

% 2b.

horse(boris). horse(hunter). horse(lady). horse(ranger). horse(santafe).
horse(topper).

girl(michelle). girl(lily). girl(theresa).

kid(brian). kid(curtis). kid(roy). kid(lily). kid(michelle). kid(theresa).

stall(1). stall(2). stall(3). stall(4). stall(5). stall(6).

age(15). age(14). age(12). age(10). age(9). age(7).

solve :-
    Schema = [[1,_,_,_],
              [2,_,_,_],
              [3,_,_,_],
              [4,_,_,_],
              [5,hunter,_,_],
              [6,_,_,_]],
    rule1(Schema,New1),
    rule2(New1, New2),
    rule3(New2, New3),
    rule4(New3, New4),
    rule5(New4, New5),
    rule6(New5, New6),
    rule7(New6, New7),
    rule8(New7, New8),
    writeln(New8).
 
applyRule(X,Xs,Xs) :- member(M,Xs), X = M.

% dups: topper,theresa,brian,roy

% 1. Topper lives two or more stalls to the east of Theresa's horse.
rule1(Schema, Result) :- 
    stall(S), stall(S1),
    S-1 > S1,
    applyRule([S,topper,_,_],Schema,Answers1),
    applyRule([S1,_,theresa,_],Answers1,Result).

% 2. The nine-year-old's horse lives somewhere to the west of Brian's horse.
rule2(Schema, Result) :- 
    stall(S), stall(S1), S < S1,
    applyRule([S,_,_,9],Schema,Answers1),
    applyRule([S1,_,brian,_],Answers1,Result).

% 3. Three horses in consecutive stalls, from west to east, are Boris, Brian's
%    horse, and the 12-year-old's horse.
rule3(Schema, Result) :-
    stall(S), stall(S1), stall(S2),
    S1 is (S+1), S2 is (S+2),
    applyRule([S,boris,_,_],Schema,Answers1),
    applyRule([S1,_,brian,_],Answers1,Answers2),
    applyRule([S2,_,_,12],Answers2,Result).

% 4. The child who rode Topper is three years older than the one who rode the
%    horse in stall 4, while Roy is three years older than Michelle. (These are 
%    4 different children).
rule4(Schema,Result) :-
    age(A), age(A1), A1 is (A - 3),
    age(A2), A2\=A, age(A3), A3 is (A2 - 3),
    kid(K), kid(K1), K \= K1, K \= roy, K \= michelle, K1 \= roy, K1 \= michelle,
    applyRule([_,topper,K,A],Schema,Answers1),
    applyRule([4,_,K1,A1],Answers1,Answers2),
    applyRule([_,_,roy,A2],Answers2,Answers3),
    applyRule([_,_,michelle,A3],Answers3,Result).

% 5. Ranger's rider is three years older than Lily, who in turn is two years
%    older than the girl who rode Lady.
rule5(Schema,Result) :-
    age(A), age(A1), age(A2), 
    girl(G),
    A1 is (A - 3), A2 is (A1 - 2),
    applyRule([_,ranger,_,A],Schema,Answers1),
    applyRule([_,_,lily,A1],Answers1,Answers2),
    applyRule([_,lady,G,A2],Answers2,Result).

% 6. Santa Fe lives somewhere to the west of Curtis's horse.
rule6(Schema,Result) :-
    stall(S), stall(S1), 
    S < S1,
    applyRule([S,santafe,_,_], Schema, Answers1),
    applyRule([S1,_,curtis,_], Answers1, Result).

% 7. Brian is just one year older than Theresa.
rule7(Schema,Result) :-
    age(A), age(A1),
    A1 is (A - 1),
    applyRule([_,_,brian,A],Schema,Answers1),
    applyRule([_,_,theresa,A1],Answers1,Result).

% 8. Roy didn't ride the horse in stall 6.
rule8(Schema,Result) :-
    stall(S), S \= 6,
    applyRule([S,_,roy,_],Schema,Result).

