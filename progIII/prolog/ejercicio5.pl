% Definir la relación sumalista(+L, ?X) que se verifique si X es la suma de los elementos de la
% lista de numeros L. Por ejemplo,
% ?- suma_lista([1,3,5],X).
% X=9


suma_lista([],0).
suma_lista([L|T],X) :- suma_lista([L|T],cola) , X is T + cola.
