
female(siostra).
female(mama).
male(ja).
male(tata).
parent(tata,ja).
parent(mama,ja).
parent(mama,siostra).
parent(dziadek,mama).


child(X,Y):-
    parent(Y,X).

mother(X,Y):-
    parent(X,Y),
    female(X).

sister(X,Y):-
    parent(Z,X),
    parent(Z,Y),
    female(X).

has_a_child(X):-
    parent(X,_).

grandparent(X,Y):-
    parent(X,Z),
    parent(Z,Y).

predecessor(X, Y) :-
    parent(X, Y).
predecessor(X, Y) :-
    parent(X, Z),
    predecessor(Z, Y).