
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


fib(0,0).
fib(1,1).

fib(A,RES):-
    B is A-1,
    C is A-2,
    fib(B,RES1),
    fib(C,RES2),
    plus(RES1,RES2,RES).

sum-up(0,0).

sum-up(A,RES):-
    (
        A > 0
        -> B is A-1,
        sum-up(B,RES1),
        RES is RES1+A
        ; sum-up(A,RES)
    ).

