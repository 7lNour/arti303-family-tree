% Family Tree Knowledge Base

% Facts
male(abdulkaleq).
male(ali).
male(mohammed).

female(fatima).
female(noor).
female(gadeer).
female(razan).
female(maryam).
female(hanin).

% Parent facts
parent(abdulkaleq, ali).
parent(abdulkaleq, mohammed).
parent(abdulkaleq, noor).
parent(abdulkaleq, gadeer).
parent(abdulkaleq, razan).
parent(abdulkaleq, maryam).
parent(abdulkaleq, hanin).

parent(fatima, ali).
parent(fatima, mohammed).
parent(fatima, noor).
parent(fatima, gadeer).
parent(fatima, razan).
parent(fatima, maryam).
parent(fatima, hanin).

% Rules
father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.
