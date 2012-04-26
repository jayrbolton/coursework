grandparentOf(X, Y) :- parentOf(X, Z), parentOf(Z, Y).
greatgrandparentOf(X, Y) :- parentOf(X, P), parentOf(P, Q), parentOf(Q, Y).

sibling(X, Y) :- X\=Y, parentOf(Z, X), parentOf(Z, Y).

cousin(X, Y) :- parentOf(P, X), parentOf(Q, Y), sibling(P, Q).

ancestorOf(X, Y) :- parentOf(X, Y).
ancestorOf(X, Y) :- parentOf(P, Y), ancestorOf(X, P).

% The complete genealogy of the royal house of Troy from the Iliad
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
