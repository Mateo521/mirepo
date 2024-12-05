% 7. La relación conc(?L1,?L2,?L3) se verifica si L3 es la lista obtenida escribiendo los elementos L2
% a continuación de los elementos de L1. Por ejemplo
% ?- conc([a,b],[c,d,e],L).
% L = [a,b,c,d,e]
% (a) Definir la relación en PROLOG.
% (b) Hacer el árbol de resolución para ?- conc([a, b], [c, d, e], L).

% (c) Generar las consultas que permitan utilizar la relación definida para responder a las siguien-
% tes preguntas:

% I. ¿Qué lista hay que añadirle a la lista [a, b] para obtener [a, b, c, d]?
% II. ¿Qué listas hay que concatenar para obtener [a, b]?
% III. ¿Pertenece b a la lista [a, b, c]?
% IV. ¿Es [b, c] una sublista de [a, b, c, d]?
% V. ¿Es [b, d] una sublista de [a, b, c, d]?
% VI. ¿Cuál es el último elemento de [b, a, c, d]?


conc([], L2, L2).
conc([H|T], L2, [H|L3]) :- conc(T, L2, L3).

