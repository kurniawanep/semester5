spouse(melinda, bill).
mother(mary, bill).
mother(motherInLaw, melinda).

rich(bill).

loves(X, Y) :- mother(X, Y).
loves(X, Y) :- spouse(X, Y).

happy(X) :- rich(X).

happy(X) :- loves(X, Y), happy(Y).