

f(1,one).
f(s(1),two).
f(s(s(1)),three).
f(s(s(s(X))),N) :- f(X,N). 


% :- f(1,X), write(X), nl.

:- f(s(1),A), write(A), nl.
:- f(s(s(s(s(s(s(1)))))),C), write(C), nl.
:- f(D,three), write(D), nl.