likes(mary,food).
likes(mary,wine).

likes(john,X):-likes(mary,X).
meal(X) :- food(X).
