# Logic Progamming with Prolog

## Intro to logic progamming

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

## Intro to **PROLOG**
