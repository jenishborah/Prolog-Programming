# Prolog sample progams examples

## meal.pl

``` prolog
// *Rules*
likes(mary,food).
likes(mary,wine).
likes(john,wine).
likes(john,mary).
```

### The following queries yield the specified answers

```prolog
 | ?- likes(mary,food).
 yes.
 | ?- likes(john,wine).
 yes.
 | ?- likes(john,food).
 no.
```

## car.pl

### Here some facts are establised regarding cars and their owners

```prolog
owns(jack, car(bmw)). 
owns(john, car(chevy)).
owns(olivia, car(civic)).
owns(jane, car(chevy)). 

sedan(car(bmw)). 
sedan(car(civic)).
truck(car(chevy)).
```

### Some sample queries and their answers

```prolog
?- owns(john, X).
    X = car(chevy).
?- owns(john, _ ).
    true.
?- owns(Who, car(chevy)).
    Who = john ;
    Who = jane .
?- owns(jane, X), sedan(X). 
    false.
?- owns(jane, X), truck(X).
    X = car(chevy).
```

## study.pl

### The facts & rules here gives of a basic relation between teacher and student

```prolog
studies(charlie, csc135).
studies(charlie, csc131).
studies(jack, csc131).
teaches(collins, csc131).

professor(X, C) :- teaches(X, C)
```

### Some queries based on the relations are (Conjuction & Backtracking)

```prolog

```

## student-proff.pl

```prolog
// rules
studies(charlie, csc135).
studies(charlie, csc131).
studies(jack, csc131).
teaches(collins, csc131).
// relations
professor(X, C) :- teaches(X, C)
```

### The above code describes a student-professor relation and what paper the student studies

### Some sample queries that can be asked regarding the relation are

```prolog
    ?- studies(charlie, What).
        What = csc135.
    ?- professor(kirke, Students).
        Students = charlie;
        Students = olivia.
```

## family-tree.pl

### The family tree

```bash
                              James I
                                 |
                                 |
                +----------------+-----------------+
                |                                  |
             Charles I                          Elizabeth
                |                                  |
                |                                  |
     +----------+------------+                     |
     |          |            |                     |
 Catherine   Charles II   James II               Sophia
                                                   |
                                                   |
                                                   |
                                                George I
```

### The resultant caluses that can be derived from the family tree in relations

```prolog
  male(james1).
  male(charles1).
  male(charles2).
  male(james2).
  male(george1).

  female(catherine).
  female(elizabeth).
  female(sophia).

  parent(charles1, james1).
  parent(elizabeth, james1).
  parent(charles2, charles1).
  parent(catherine, charles1).
  parent(james2, charles1).
  parent(sophia, elizabeth).
  parent(george1, sophia).
```

### The queries for some example caluses

```prolog
    Was George I the parent of Charles I? 
              Query: parent(charles1, george1). 
    Who was the parent of Charles I?
              Query: parent(charles1,X). 
    Who were the children of Charles I?
              Query: parent(X,charles1). 
```

## family.pl

```prolog
father(X, Y).
mother(X, Y).
male(X).
female(X).
```

### Define relations based on the given facts

```prolog
parent(X, Y) :- father(X, Y) ; mother(X, Y).
sibling(X,Y) :- parent(X, Z), parent(Y, Z).
sister(X, Y) :- female(X), female(Y), sibling(X, Y).
grandson(X, Y) :- male(X), parent(X, Z), parent(Z, Y).
first_cousin(X, Y) :- parent(X, W), sibling(W, Z), parent(Y, Z).
descendant(X,Y) :- parent(Y, X).
descendant(X,Y) :- parent(Y, Z), descendant(X, Z).
```

### From the above rules, queries generate correct results
