% 1. Mr. Hempel is a teacher %
teacher(hempel).
% 2. All teachers are human %
human(X) :- teacher(X) .
% 3. All human are lazy or work a lot %
lazy(X) :- human(X).
work(X) :- human(X).
% 4. Mr Hempel does not work much %
not(work(hempel)).

% Evidence for Mr. Hempel is lazy %
% check ?- lazy(hempel)
