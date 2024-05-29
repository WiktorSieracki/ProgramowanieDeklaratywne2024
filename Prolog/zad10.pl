


nth(0,[X|_],X).
nth(N,[_|T],X):-
    N1 is N-1,
    nth(N1,T,X).


ordered([]).
ordered([_]).
ordered([H1,H2|T]):-
    H1 < H2,
    ordered([H2|T]).

perm([], []).
perm(L, [X|T]) :-
    select(X, L, R),
    perm(R, T).


mergesort([],[]).
mergesort(L1,L2):-
    ordered()


