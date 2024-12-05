% 11. Definir la relación mayorN(+N, +L, ?LR) que se verifica si LR es una lista con los elementos
% mayores que N encontrados en la lista L. Por ejemplo
% ?- mayorN(3,[1,2,3,4,5,6],X).
% X = [4,5,6]
% ?- mayorN(3,[],X).
% X=[]
% ?- mayorN(3,[1,2,3,4,5,6],[4,5,6]).
% true.

mayorN(_, [], []).

% Caso recursivo: si el primer elemento de la lista es mayor que N, lo incluimos en la lista de salida.

mayorN(N, [H|T], [H|LR]) :- H > N, mayorN(N, T, LR).

% Caso recursivo: si el primer elemento de la lista no es mayor que N, no lo incluimos en la lista de salida.

mayorN(N, [H|T], LR) :- H =< N, mayorN(N, T, LR).


