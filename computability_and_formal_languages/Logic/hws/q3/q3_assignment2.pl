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

kid(brian). kid(curtis). kid(roy). kid(lily). kid(michelle). kid(theresa).

stall(1). stall(2). stall(3). stall(4). stall(5). stall(6).

age(15). age(14). age(12). age(10). age(9). age(7).

solve(S,H,K,A) :-
    stall(S), horse(H), kid(K), age(A),
    rel(S,H,K,A).

% 1. Topper lives two or more stalls to the east of Theresa's horse.
rel(S,topper,K,_) :- 
    kid(K), not(K=theresa),
    stall(S), stall(S2),
    S > (S2+1),
    rel(S2,_,theresa,_).

% 2. The nine-year-old's horse lives somewhere to the west of Brian's horse.
rel(S,_,K,9) :- 
    kid(K), not(K = brian), stall(S2), stall(S),
    S < S2,
    rel(S2,_,brian,_).

% 3. Three horses in consecutive stalls, from west to east, are Boris, Brian's
%    horse, and the 12-year-old's horse.
rel(S,boris,K,A) :-
    kid(K), not(K = brian),
    age(A), not(A = 12),
    stall(S),
    S2 is (S+1), S3 is (S+2),
    rel(S2,_,brian,_),
    rel(S3,_,_,12).

rel(S,H,brian,A) :-
    horse(H), not(H = boris),
    age(A), not(A = 12),
    stall(S),
    S2 is (S-1), S3 is (S+1),
    rel(S2,boris,_,_),
    rel(S3,_,_,12).

rel(S,H,K,12) :-
    kid(K), not(K = brian),
    horse(H), not(H = boris),
    stall(S),
    S2 is (S-1), S3 is (S-2),
    rel(S2,_,brian,_),
    rel(S3,boris,_,_).

% 4. The child who rode Topper is three years older than the one who rode the
%    horse in stall 4, while Roy is three years older than Michelle. (These are 
%    4 different children).
rel(S,topper,K,A) :-
    stall(S), not(S = 4),
    kid(K), not(K = roy), not(K = michelle),
    age(A), A2 is (A - 3),
    rel(4,_,_,A2).

rel(_,_,roy,A) :-
    age(A), A2 is (A - 3),
    rel(_,_,michelle,A2).

% 5. Ranger's rider is three years older than Lily, who in turn is two years
%    older than the girl who rode Lady.
rel(_,ranger,K,A) :-
    kid(K), not(K = lily),
    age(A), A2 is (A - 3),
    rel(_,_,lily,A2).

rel(_,H,lily,A) :-
    horse(H), not(H = lady),
    age(A), A2 is (A - 2),
    rel(_,lady,_,A2).

% 6. Santa Fe lives somewhere to the west of Curtis's horse.
rel(S,santafe,K,_) :-
    kid(K), not(K = curtis),
    stall(S2),stall(S),
    S < S2,
    rel(S2,_,curtis,_).

% 7. Brian is just one year older than Theresa.
rel(_,_,brian,A) :-
    age(A), A2 is (A - 1),
    rel(_,_,theresa,A2).

%8. Roy didn't ride the horse in stall 6.
rel(6,_,K,_) :- 
    kid(K), not(K = roy).
