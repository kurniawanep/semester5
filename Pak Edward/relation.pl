% Gender Clustering
female(pam).
female(liz).
female(ann).
female(pat).
male(tom).
male(bob).
male(jim).

% Parent Relation
parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

child(X, Y) :- parent(Y, X).
% father(X, Y) :- parent(X, Y), male(X).
% mother(X, Y) :- parent(X, Y), female(X).
grandparent( X, Z) :-parent( X, Y), parent( Y, Z).
% predecessor(X, Z) :- parent(X, Z).
% predecessor( X, Z) :-parent( X, Y), predecessor(Y, Z).