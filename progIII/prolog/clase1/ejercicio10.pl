% Caso base: Lista vacía
cuentaN([], _, 0).

% Caso recursivo: Cuando el primer elemento de la lista es N
cuentaN([N|T], N, R) :-
    cuentaN(T, N, R1),
    R is R1 + 1.

% Caso recursivo: Cuando el primer elemento de la lista no es N
cuentaN([X|T], N, R) :-
    X \= N,
    cuentaN(T, N, R).

