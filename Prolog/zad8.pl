
last(X,[X]).
last(X,[_|T]):- last(X,T).

delete(X,[X|T],T).
delete(X,[H|L1],[H|L2]):- delete(X,L1,L2).


delete(L1,L2):- append(L2,[_,_,_],L1).


reverse(L1, L2) :- reverse(L1, [], L2).

reverse([], Acc, Acc).
reverse([H|T], Acc, L2) :- reverse(T, [H|Acc], L2).

evenlength([]).
evenlength([_,_]).
evenlength([_|T]):-
    oddlength(T).
oddlength([_]).
oddlength([_|T]):-
    evenlength(T).

shift([H|T1],L2):- 
    append(T1,[H],L2).

quadrat(L1, L2) :- quadrat(L1, [], L2).

quadrat([], Acc, Acc).
quadrat([H|T], Acc, L2) :- 
    H2 is H*H,
    append(Acc,[H2],L3),
    quadrat(T, L3, L2).

square([],[]).
square([H1|T1],[H2|T2]):-
    H2 is H1*H1,
    square(T1,T2).
    
combine(L1,L2,L3):-combine(L1,L2,[],L3).

combine([],[],Acc,Acc).
combine([H1|T1],[H2|T2],Acc,L3):-
    append(Acc,[[H1,H2]],Acc1),
    combine(T1,T2,Acc1,L3).

combine2([H1|T1],[H2|T2],[[H1,H2]|T3]):-
    combine(T1,T2,T3).


palindrom(L):-
    reverse(L,L).

p(X,[A,X,B|_],A,B).
p(X,[_|T],Y,Z):-
    p(X,T,Y,Z).

q(_,[],[]).
q(X,[X,X|_],[X,X]).
q(X,[H|T],[H|L1]):-
    q(X,T,L1).


% ?- q(3,[1,2,3,3,1,2,4],Z).
% Z = [1,2,3,3]