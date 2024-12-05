% Si X es mayor o igual que Y, entonces el máximo es X
maximo(X, Y, X) :-
    X >= Y.

% Si Y es mayor que X, entonces el máximo es Y
maximo(X, Y, Y) :-
    Y > X.

