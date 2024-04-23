latin(i,1).
latin(v,5).
latin(x,10).
latin(l,50).
latin(c,100).
latin(d,500).
latin(m,1000).

latin([],0).
latin([H],X):-
    latin(H,X).
latin([H1,H2|T],X):-
    latin(H1,Val1),
    latin(H2,Val2),
    (   Val2 > Val1
    ->  latin([H2|T],Res),
        X is Res - Val1
    ;   latin([H2|T],Res),
        X is Res + Val1
    ).
% [x,l,v,i,i]