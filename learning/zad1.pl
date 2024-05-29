
mylength(0,[]).
mylength(N,[_|L]) :- 
    mylength(M,L), 
    N is M+1.

member(X,[X|_]).
member(X,[_|T]):-
    member(X,T).

fac(0,1).
fac(X,RES):-
    NextX is X-1,
    fac(NextX,NewRes),
    RES is NewRes*X.

fib(0,0).
fib(1,1).
fib(X,RES):-
    NextX1 is X-1,
    NextX2 is X-2,
    fib(NextX1,RES1),
    fib(NextX2,RES2),
    RES is RES1+RES2.

gcd(X,0,X).
% gcd(X,X,X).
gcd(X,Y,RES):-
    Mod is X mod Y,
    gcd(Y,Mod,RES).

