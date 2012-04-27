% J Bolton
% CNC, quarter 3
% Chapter 5 exercises from edinburgh course notes

/*
5.1a    X = bear
5.1b    X = bear, Y = elephant
5.1c    D = cat
5.1d    false
5.1e    P = cat

5.2a    success
5.2b    failure
5.2c    failure
5.2d    success
*/

% The complete genealogy of the royal house of Troy from the Iliad.
parentOf(zeus, dardanus).
parentOf(dardanus, erichthonius).
parentOf(erichthonius, tros).
parentOf(tros, ganymede).
parentOf(tros, assaracus).
parentOf(tros, ilus).
parentOf(assaracus, capys).
parentOf(capys, anchises).
parentOf(anchises, aeneas).
parentOf(ilus, laomedon).
parentOf(laomedon, priam).
parentOf(priam, hector).
parentOf(laomedon, clytius).
parentOf(laomedon, hicetaon).
parentOf(laomdedon, tithonus).
parentOf(clytius, caletor).
parentOf(hicetaon, melannipus).
parentOf(lampus, dolops).
parentOf(laomedon, lampus).

% This design has both genderized and gender neutral relations 
% However, the above genealogy is all male. 

grandparentOf(X, Y) :- parentOf(X, Z), parentOf(Z, Y).
grandfatherOf(X,Y) :- grandparentOf(X,Y), male(X).
grandmotherOf(X,Y) :- grandparentOf(X,Y), female(X).

greatgrandparentOf(X, Y) :- parentOf(X, P), parentOf(P, Q), parentOf(Q, Y).
greatgrandfatherOf(X,Y) :- greatgrandparentOf(X,Y), male(X).
greatgrandmotherOf(X,Y) :- greatgrandmotherOf(X,Y), female(X).

sibling(X,Y) :- X\=Y, parentOf(Z, X), parentOf(Z, Y).
sister(X,Y) :- sibling(X,Y), female(X).
brother(X,Y) :- sibling(X,Y), male(X).

cousin(X, Y) :- parentOf(P, X), parentOf(Q, Y), sibling(P, Q).

ancestorOf(X, Y) :- parentOf(X, Y).
ancestorOf(X, Y) :- parentOf(P, Y), ancestorOf(X, P).
