
% Facts
parent(john, jim).
parent(john, ann).
parent(john, mark).
parent(jim, billy).

% Rules
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).


% Queries
% grandparent(john, ann). -> false
% grandparent(jim, billy). -> false
% grandparent(john, billy). -> true

% grandparent(john, X). -> X = billy
% grandparent(X, billy). -> X = john