
member2(X,[X|T]).
member2(X,[_|T]):-
    member2(X,T),
    member2(X,)

