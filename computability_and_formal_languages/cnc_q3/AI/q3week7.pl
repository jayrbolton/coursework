% J Bolton
% AI Programming, week 7
% Definite clause grammars

s([s,NP,VP],N1,N2,_) --> np(NP,N1),vp(VP,N1,N2).
s([s,NP,NPREP,VP],N1,N2,_) --> np(NP,N1),nprep(NPREP,N1),vp(VP,N1,N2).
s([s,NP,VP,ADV],N1,N2,_) --> np(NP,N1),vp(VP,N1,N2),adv(ADV).
s([s,NP,NPREP,VP,ADV],N1,N2,_) --> np(NP,N1),nprep(NPREP,N1),vp(VP,N1,N2),adv(ADV).
s([s,NP,REL,VP],N1,N2,N3) --> np(NP,N1),rel(REL,N1,N2),vp(VP,N1,N3).
s([s,NP,NPREP,REL,VP],N1,N2,N3) --> np(NP,N1),nprep(NPREP,N1),rel(REL,N1,N2),vp(VP,N1,N3).
s([s,NP,REL,VP,ADV],N1,N2,N3) --> np(NP,N1),rel(REL,N1,N2),vp(VP,N1,N3),adv(ADV).
s([s,NP,NPREP,REL,VP,ADV],N1,N2,N3) --> np(NP,N1),nprep(NPREP,N1),rel(REL,N1,N2),vp(VP,N1,N3),adv(ADV).

np([np,DET,N],Num) --> det(DET,Num), n(N,Num).
np([np,PN],Num) --> pn(PN,Num).

nprep([nprep,with,a,hangover],singular) --> [with],[a],[hangover].
nprep([nprep,without,socks],singular) --> [without],[socks].
nprep([nprep,wearing,tophats],plural) --> [wearing],[tophats].
nprep([nprep,singing,badly],_) --> [singing],[badly].

vp([vp,VT,NP],N1,N2) --> vt(VT,N1), np(NP,N2).
vp([vp,VT,NP,NPREP],N1,N2) --> vt(VT,N1), np(NP,N2), nprep(NPREP,N2).
vp([vp,VI],N1,_) --> vi(VI,N1).

adv([adv,with,joy]) --> [with],[joy].
adv([adv,in,discomfort]) --> [in],[discomfort].
adv([adv,perplexedly]) --> [perplexedly].
adv([adv,angrily]) --> [angrily].

det([det, every],singular) --> [every].
det([det,many],plural) --> [many].
det([det,a],singular) --> [a].
det([det,the],_) --> [the].

vt([vt, chases],singular) --> [chases].
vt([vt, chase],plural) --> [chase].
vi([vi, miaows],singular) --> [miaows].
vi([vi, miaow],plural) --> [miaow].

n([n,dogs],plural) --> [dogs].
n([n,dog],singular) --> [dog].
n([n,cat],singular) --> [cat].
n([n,cats],plural) --> [cats].

rel([rel,that,VP],N1,N2) --> [that],vp(VP,N1,N2).

pn([pn,fido],singular) --> [fido].
pn([pn,tigger],singular) --> [tigger].

