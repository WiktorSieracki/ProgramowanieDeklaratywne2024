
parent(wiktor,pawel).
% parent(gracjan,pawel).
parent(wiktor,damian).
parent(gracjan,damian).
parent(rafal,wiktor).
female(damian).
female(gracjan).
male(wiktor).
male(pawel).

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

grandparent(waldek,wiktor).
grandparent(X,Y):-
    parent(X,Z),
    parent(Z,Y).

predecessor(X,Y):-
    parent(X,Y).
predecessor(X,Y):-
    parent(X,Z),
    predecessor(Z,Y).