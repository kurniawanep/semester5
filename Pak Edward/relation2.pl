man(adam).
man(peter).
man(paul).
man(jack).
woman(marry).
woman(eve).

parent(adam, peter).
parent(jack, adam).
parent(marry, peter).
parent(adam, paul).
parent(marry, paul).

grandpa(X, Z) :- parent(X,Y), parent(Y,Z), man(X).
father(X,Y) :- parent(X,Y), man(X).
mother(X,Y) :- parent(X,Y), woman(X).