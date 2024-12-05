% La relación cons(?X, ?L1, ?L2) se verifica si L2 es la lista obtenida añadiéndole X a L1 como
% primer elemento. Por ejemplo:
% ?- cons(a,[b,c],L).
% L = [a,b,c]
% (a) Definir la relación en PROLOG.
% (b) Obtener la respuesta a las siguientes consultas:
% I. ?- cons(X, [b, c], [a, b, c]).
% II. ?- cons(a, L, [a, b, c]).
% III. ?- cons(b, L, [a, b, c]).
% IV. ?- cons(X, L, [a, b, c]).

cons(X,L,[X|L]).

