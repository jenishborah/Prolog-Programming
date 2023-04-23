# Logic Progamming with Prolog

## Introduction to logic progamming

Logic progamming deals with relations rather than functions.

### **Relations**

A concrete view of a relation is as a table with n>= 0 columns and a possibly infinite set of rows.

Some basic relations are:

- **Rules**

    *Rules* are written as in

    ```prolog
        P if Q1 and Q2 and ...  and Qk. for k>=0.
    ```

    This is also called a *Horn Clause*.

- **Facts**

    A *fact* is a special case of a rule, in which k = 0 and P holds without any condition, written simply as

    ```prolog
        P.
    ```

    A fact is always true.

- **Append**

    The *append* relation is specified by two rules.
    The first is a fact starting that triples of the form ([], Y, **Y**) are in relation append.

    ```prolog
    append [] and Y to get Y.
    ```

    The second rule for append is shown for completeness. It uses the [H|T] for a list with Head H and tail T:

    ```prolog
        append [H|X] and Y to get [H|Z]
            if append X and Y to get Z
    ```

### **Queries**

Logic progamming is driven by queries about relation. The simplest queries ask whether a particular tuple belongs to a relation. The query
asks whether the triple `([a,b],[c,d],[a,b,c,d]) belongs to relation *append*.

```prolog
    append [a,b] and [c,d] to get [a,b,c,d]?
            Answer: yes
```

## **Variants/extensions of Logic Programming**

Prolog

Abductive logic programming

Metalogic programming

Constraint logic programming

Concurrent logic programming

Concurrent constraint logic programming

Inductive logic programming

Higher-order logic programming

Linear logic programming

Object-oriented logic programming

Transaction logic programming

## Introduction to **PROLOG**

Prolog is a logic programming language associated with artificial intelligence and computational linguistics.

It was in the following summer of 1972, that Kowalski, developed the procedural interpretation of implications. This dual declarative/procedural interpretation later became formalised in the Prolog notation
 ```prolog
        H :- B1, …, Bn..
  ```

It can be read/used both declaratively and procedurally.

In Prolog, program logic is expressed in terms of relations, and a computation is initiated by running a query over these relations.

Relations and queries are constructed using Prolog's single data type, the term, Relations are defined by clauses.

- **The term**

Prolog's single data type is the term. Terms are:

  1. atom
 ```
      Example:   x, red, 'Taco', and 'some atom' 
 ```
  
  2. Numbers
 ```
      Example:   int, float
  ```
  
  3. variables
 ```
      Example:   string consisting of letters, numbers and underscore characters
  ```
  
  4. compound term
 ```
      Example:   person_friends(zelda,[tom,jim])
 ```
 
- **Clauses**

There are two types of clauses: facts and rules.

1. Clauses with empty bodies are called "facts". 
 ```
      Example:   cat(tom).
 ```


2. Clauses with bodies are called "rules". 
 ```
      Example:   animal(X) :- cat(X).
 ```

