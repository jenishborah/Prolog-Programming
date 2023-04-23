parent(john, mary).
parent(john, tom).
parent(sue, mary).
parent(sue, tom).

grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
