add(0, X, X).
add(s(X), Y, s(Z)) :-
    add(X, Y, Z).

subtract(X, 0, X).
subtract(s(X), s(Y), Z) :-
    subtract(X, Y, Z).

multiply(0, _, 0).
multiply(s(X), Y, Z) :-
    multiply(X, Y, W),
    add(Y, W, Z).

factorial(0, s(0)).
factorial(s(X), Y) :-
    factorial(X, Z),
    multiply(s(X), Z, Y).
