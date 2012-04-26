% J Bolton
% Prolog lab 1

/*
Everyone likes anyone who likes someone.
Alfred likes Betty.
Therefore, Clyde likes Doris. 
*/

% likes(alfred, betty).
% likes(X, Y) :- likes(Y, Z).

% ?- likes(everybody, everybodyelse).
% true .

/*
Alfred likes anyone who likes him. 
Therefore, Alfred likes himself. 
*/
        
% likes(alfred, X) :- likes(X, alfred).

% likes(alfred, alfred) creates endless loop
% We do not know what is alfred's a priori opinion of himself

/*
Alfred does not like anyone who likes him.
Therefore, Alfred does not like himself.
*/

likes(alfred, X) :- not(likes(X,alfred)).

% likes(alfred, alfred) creates another endless loop

/*
Some arps are not blops.
Some blops are not clugs.
Therefore, some arps are not clugs. 
*/

/*
arp(a).
blop(b).
clug(c).
clug(a).

rule1(X) :- arp(X), not(blop(X)).
rule2(X) :- blop(X), not(clug(X)).
conclusion(A,B,C) :- rule1(A), rule2(B), arp(C), not(clug(C)).
*/

% ?- conclusion(A,B,C).
% false.

/*
All arps are blops.
No arps are clugs.
Therefore, no blops are clugs. (AbEB(b~EC))
*/

/*
arp(a).
blop(a).
blop(b).
clug(b).

rule1(X) :- arp(X), blop(X). %forall arps (only a)
rule2(X) :- arp(X), not(clug(X)). %forall arps (only a)
conclusion(A,B,C) :- rule1(A), rule2(B), blop(C), not(clug(b)).
*/

% if the conclusion is valid, then C should yield both a and b

% ?- conclusion(A,B,C).
% A = a,
% B = a,
% C = b.

% invalid

/*
Some arps are not blops.
All clugs are blops.
Therefore, some arps are not clugs.
*/

arp(a).
blop(b).
clug(b).

rule1(X) :- arp(X), not(blop(X)).
rule2(X) :- clug(X), blop(X). %forall clugs a and b
conclusion(A,B,C) :- rule1(A), rule2(B), arp(C), not(clug(C)).

% ?- conclusion(A,B,C).
% A = a,
% B = b,
% C = a.
