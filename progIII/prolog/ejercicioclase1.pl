1 concatenar([],L,L).
2 concatenar([X|Y],Z,[X|U]):-concatenar(Y,Z,U).

1. Hacer la resolución SLD de
1) ?- concatenar([a, b, c], X, [a, b, c, d, e]).
2) ?- concatenar([a, b, c], X, [a, c, d, e]).


X = a
Y = [b,c]
Z = X
U = [b,c,d,e]

concatenar([b,c],X,[b,c,d,e]).

X = b
Y = [c]
Z = X
U = [c,d,e]

concatenar(b,X,[c,d,e]).

X = b
Y = []
Z = X
U = [d,e]



