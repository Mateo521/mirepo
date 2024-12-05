Una lista de notas es una lista de elementos de la forma notas (N,L). donde N es el nombre de un alumno,
y l es la lista de sus notas. Defina la relacion notables(L1,L2) que se verifique si l2 es la lista de los nombres
de los alumnos cuyo el promedio de sus notas es mayor a 7 


notable([],[]).
notable([[X,Xs]|Y],L) :-  suma(Xs,Suma), contador (Xs,Contador),Contador > 0, Promedio is Suma/Contador,  Promedio >= 7, notable(Y,X).

suma([],0).
suma ([X|Y],R) :- suma(Suma), R is Suma  + X.



contador([],0).
contador ([X|Y],R) :- contador(Suma), R is Suma  + 1.