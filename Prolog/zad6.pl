

sil(X,N) :- sil(X,N,1).

sil(0,A,A). 
sil(X,N,A) :-
X > 0,
A1 is A * X,
X1 is X - 1,
sil(X1,N,A1).

plus(A,B,Res):- plus(A,B,0,Res).

plus(0,0,Acc,Acc).
plus(A, B, Acc, Res) :-
    A > 0,
    A1 is A - 1,
    Acc1 is Acc + 1,
    plus(A1, B, Acc1, Res).
plus(A, B, Acc, Res) :-
    B > 0,
    B1 is B - 1,
    Acc1 is Acc + 1,
    plus(A, B1, Acc1, Res).


times(A, B, Res) :- times(A, B, 0, Res).

times(_, 0, Acc, Acc).
times(0, _, Acc, Acc).
times(A, B, Acc, Res) :-
    A > 0,
    A1 is A - 1,
    Acc1 is Acc + B,
    times(A1, B, Acc1, Res).


fib(A, Res) :- fib(A, 0, 1, Res).

fib(0,_,_,0).
fib(1,_,F2,F2).
fib(A,F1,F2,Res):-
    A>1,
    A1 is A-1,
    F3 is F1+F2,
    fib(A1,F2,F3,Res).


sum-up(A,Res) :- sum-up(A,Res,0).

sum-up(0,A,A).
sum-up(A,Res,Acc) :-
    A>0,
    A1 is A-1,
    Acc1 is Acc+A,
    sum-up(A1,Res,Acc1).

