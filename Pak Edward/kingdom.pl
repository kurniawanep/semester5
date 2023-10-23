%Gender
male(jamesI).
male(charlesI).
male(georgeI).
male(charlesII).
male(jamesII).
female(elizabeth).
female(catherine).
female(sophia).

%Parent
parent(jamesI, charlesI).
parent(jamesI, elizabeth).
parent(charlesI, catherine).
parent(charlesI, charlesII).
parent(charlesI, jamesII).
parent(elizabeth, sophia).
parent(sophia, georgeI).

%Defining Relation
father(X, Y) :- parent(X, Y), male(X).
grandparent( X, Z) :-parent( X, Y), parent( Y, Z).
grandma(X, Z) :- parent(X, Y), parent(Y, Z), female(X).
cousin(X, Y) :-
    parent(ParentofX, X),
    parent(ParentofY, Y),
    ParentofX \== ParentofY,
    grandparent(Grandparent, X),
    grandparent(Grandparent, Y),
    X \== Y.



