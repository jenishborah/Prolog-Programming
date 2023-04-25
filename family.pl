% given
father(X, Y).
mother(X, Y).
male(X).
female(X).

% user-defined
parent(X, Y) :- father(X, Y) ; mother(X, Y).
sibling(X,Y) :- parent(X, Z), parent(Y, Z).
sister(X, Y) :- female(X), female(Y), sibling(X, Y).
grandson(X, Y) :- male(X), parent(X, Z), parent(Z, Y).
first_cousin(X, Y) :- parent(X, W), sibling(W, Z), parent(Y, Z).
descendant(X,Y) :- parent(Y, X).
descendant(X,Y) :- parent(Y, Z), descendant(X, Z).