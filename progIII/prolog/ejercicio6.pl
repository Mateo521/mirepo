% 6. La relación pertenece(?X, ?L) se verifica si X es un elemento de la lista L. Por ejemplo:
% 
% ?- pertenece(b,[a,b,c]).
% Yes
% ?- pertenece(d,[a,b,c]).
% No

pertenece(X,[X|_]) :- !.
pertenece(X,[_|T]) :- pertenece(X,T).
