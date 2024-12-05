% 10. Definir la relación cuentaN(+L, +N, ?LR) que se verifica si LR es la cantidad de veces que se
% encuentra N en la lista L. Por ejemplo:
% ?- cuentaN([1,2,1,2,1],1,3).
% ?- true.
% ?- cuentaN([1,2,1,2,1],10,X).
% X=0.
% ?- cuentaN([1,2,1,2,1,1,1],1,X).
% X=5.
cuentaN([],_,0).
cuentaN([X|Y], X, Count) :-cuentaN(Y, X, SubCount),  Count is SubCount + 1.
cuentaN([X|T], N, Count) :- X \= N, cuentaN(Y, N, Count).
