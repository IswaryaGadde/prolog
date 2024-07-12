% 524Program3.pl
% Author: Iswarya Gadde
% Date: 07-12-2024
% I did not copy my solution from another person or from anywhere on the internet or elsewhere.

:- initialization(main).

main :-
    write('File loaded successfully!'), nl.

% disjoint/2
disjoint([], _).
disjoint([H|T], L) :-
    \+ member(H, L),
    disjoint(T, L).

% countValues/3
countValues(_, [], 0).
countValues(X, [X|T], N) :-
    countValues(X, T, N1),
    N is N1 + 1.
countValues(X, [H|T], N) :-
    X \= H,
    countValues(X, T, N).

% letter/2
letter(Grade, unknown_grade_value) :- \+ number(Grade).
letter(Grade, a) :- Grade >= 90.
letter(Grade, b) :- Grade >= 80, Grade < 90.
letter(Grade, c) :- Grade >= 70, Grade < 80.
letter(Grade, d) :- Grade >= 60, Grade < 70.
letter(Grade, f) :- Grade < 60.
