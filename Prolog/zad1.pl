

% [1, 2, 3]

myLength(0,[]).
myLength(N,[_|L]) :- myLength(M,L), N is M+1.

member(X,[X|_]).
member(X,[_|T]) :-
    member(X,T).

fac(0,1).
fac(X,Y) :-
    X > 0, Z is X-1,
    fac(Z,A), Y is A*X.

fib(0,0).
fib(1,1).
fib(X,Y) :-
    A is X - 1,
    B is X - 2,
    fib(A, L),
    fib(B, M),
    Y is L + M.


gcd(X, 0, X).
gcd(X,Y,Z) :-
    B is X mod Y,
    gcd(Y,B,Z).