
plus(X,0,X).
plus(0,X,X).
plus(X,Y,Sum):-
    N is X-1,
    plus(N,Y,New),
    Sum is New+1.


times(_,0,0).
times(0,_,0).
times(X,1,X).
times(1,X,X).

times(X,Y,Res):-
    N is Y-1,
    times(X,N,New),
    plus(X,New,Res).


