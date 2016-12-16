% Facts
man(reinhold).
man(joerg).
man(daniel).

woman(julia).
woman(anne).
woman(ingrid).

father(reinhold, joerg).
father(joerg, julia).
mother(ingrid, joerg).
mother(anne, julia).
couple(anne, uwe).
couple(julia, daniel).

family(julia,daniel,[linda,marian]).
family(daniela,marius,[]).

% Rules
grandfather(X, Z) :-
    father(X, Y),
    (father(Y, Z); mother(Y, Z)).
grandmother(X, Z) :-
    mother(X, Y),
    (father(Y, Z); mother(Y, Z)).

% symmetric relation
couple(X, Y) :- couple(Y, X).

% ancestor by recursion
parent(X, Y) :- father(X, Y) ; mother(X, Y).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).
