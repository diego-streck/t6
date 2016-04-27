% Exercício 1

zeroInit([H|_]) :- 
	H =:= 0.

% Exercício 2

has5(L) :- length(L,N), N =:= 5.

% Exercício 3

 hasN(L,N):-
 length(L,T),
 T =:= N.

% Exercício 4

potN0(-1,[]).
potN0(N,L):- 
	N >= 0,
	H is 2^N,
	L = [H | T],
	N1 is N-1, 
  potN0(N1,T).

% Exercício 5

zipmult([],[],[]).
zipmult([H1|T1],[H2|T2],L3) :- L1 is H1*H2, L3 = [L1|T3], zipmult(T1,T2,T3).

% Exercício 6

positivos([],[]).
positivos([H1|T1],[H2|T2]) :- H1 > 0, H2 is H1, positivos(T1,T2), !.
positivos([_|T1],L) :- positivos(T1,L), !.

% Exercício 7

positivos([],[]).
positivos([H1|T1],[H2|T2]) :- H1 > 0, H2 is H1, positivos(T1,T2).
positivos([_|T1],L) :- positivos(T1,L).

% Exercício 8

mesmaPosicao(_,[],[]) :- false.
mesmaPosicao(A,[H1|_],[H2|_]) :- A = H1, H1 = H2, true.
mesmaPosicao(A,[_|T1],[_|T2]) :- mesmaPosicao(A,T1,T2).


% Exercício 10 azulejos

azulejos(NA, NQ):- azulejos_aux(NA,N), length(N,NQ).

azulejos_aux(0,[]) :- !.
azulejos_aux(NA,[H|T]) :- sqrt(NA, SQRT), floor(SQRT, FLOOR), H is FLOOR^2, RESTO is NA - H, azulejos_aux(RESTO, T).



