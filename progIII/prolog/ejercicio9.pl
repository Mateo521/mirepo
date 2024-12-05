% La relación duplica(?L1, ?L2) que se verifique si L2 es la lista obtenida escribiendo cada ele-
% mento de L1 dos veces. Por ejemplo,

% ?- duplica([1,2,3],L).
% L = [1,1,2,2,3,3]


duplica([],[]).
duplica([X|Y],[X,X|T]) :- duplica(Y,T). 
L = [1,2,3,4]

X = 1

Y = [2,3,4]

duplica([2,3,4],T1).

X = 2

Y = [3,4]

duplica([3,4],T2).

X = 3
Y = [4]

duplica([4],T3).
X = 4
Y = []

duplica([],T4).
T4 = [].
Return
duplica([4],[4,4|T3]).
T3 = [4,4]

duplica([3,4],[3,3|T2]).
T2 = [3,3,4,4]

duplica([2,3,4],[2,2|T1]).

T = [1,1,2,2,3,3,4,4]

