% Database predicates
:- dynamic person/2.

% Add a person to the database
add_person(Name, Age) :-
    assertz(person(Name, Age)),
    write('Person added to the database.').

% Display all persons in the database
display_persons :-
    person(Name, Age),
    format('Name: ~w, Age: ~w~n', [Name, Age]),
    fail.
display_persons.
