
last(X,[X]).
last(X,[_|T]):- last(X,T).

delete(X,[X|T],T).
delete(X,[H|L1],[H|L2]):- delete(X,L1,L2).


delete(L1,L2):- append(L2,[_,_,_],L1).


reverse([H1|T1],[H2|T2]).