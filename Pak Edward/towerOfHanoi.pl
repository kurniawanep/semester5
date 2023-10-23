move(N, Source, Target, Intermediate) :-
    move(N, Source, Target, Intermediate, _).

move(1, Source, Target, _, Move) :-
    format('Move disk 1 from ~w to ~w~n', [Source, Target]),
    Move = 1.

move(N, Source, Target, Intermediate, Moves) :-
    N > 1,
    N1 is N - 1,
    move(N1, Source, Intermediate, Target, Moves1),
    format('Move disk ~w from ~w to ~w~n', [N, Source, Target]),
    move(N1, Intermediate, Target, Source, Moves2),
    Moves is Moves1 + Moves2 + 1.


towerOfHanoi(N) :-
    move(N, 'Source', 'Target', 'Intermediate').

% Example usage:
% To solve the Tower of Hanoi with 3 disks, use the following query:
% ?- tower_of_hanoi(3).
