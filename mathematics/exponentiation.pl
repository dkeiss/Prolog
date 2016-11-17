exponent(Exponent, 0, 1) :-
!.
exponent(Exponent, N, Result) :-
N1 is N-1,
exponent(Exponent, N1, Result1),
Result is Exponent * Result1.

