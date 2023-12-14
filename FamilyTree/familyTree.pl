male(dasarath).
male(ram).
male(laxman).
male(luv).
male(kush).
male(david).

male(harka).
female(kaushilya).
female(sita).
female(urmila).
female(maya).
husband(dasarath,kaushilya).
husband(ram, sita).
husband(luv,maya).
husband(laxman, urmila).
father(dasarath, ram).
father(dasarath, laxman).
father(ram,luv).
father(ram,kush).
father(luv,david).
father(luv,harka).

%LogicForGrandfather
grandfather(A,C) :- father(A,B) , father(B,C).

%LogicForMother
mother(X,Y):- husband(Z,X), father(Z,Y).

%LogicForGrandmother
grandmother(Ama,Natini):- father(Ba,Natini), mother(Ama,Ba).
%OR
%grandmother(Ama,Nati):- grandfather(X,Nati), husband(X,Ama).

%LogicForBrother
brother(A,B):- father(X,A), father(X,B),A\=B.

%LogicForUncle
uncle(A,B):- father(X,B), brother(X,A).