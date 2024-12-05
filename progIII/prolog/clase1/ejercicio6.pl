% ?- pertenece(b,[a,b,c]).
% Yes
% ?- pertenece(d,[a,b,c]).
% No

pertenece(X, [X|_]).
pertenece(X,[_|Y]) :- pertenece(X,Y).


