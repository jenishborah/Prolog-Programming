% Facts
likes(mary,food).
likes(mary,wine).
likes(john,wine).
likes(john,mary).
% Rules

likes(john,X):-likes(mary,X).
meal(X) :- food(X).
