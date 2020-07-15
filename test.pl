/* append([],X,X).
append([H|T],Y,[H|A]):-append(T,Y,A). */

/*c(red).
c(t,y).

likes(mary, pizza).
likes(marco, pizza).
likes(Human, pizza) :- italian(Human).
italian(marco).

duplicate([],L).
duplicate([X|P],[]):-duplicate(P,[X]).
duplicate([X|P],L1):- member(X,L1),duplicate(P,L1) .
duplicate([X|P],L1):-  \+member(X,L1),duplicate(P,[X|L1]). */ 


dup([],[]):-!.
dup([H|T],L):-
    member(H,T),dup(T,L),!.

dup([H|T],[H|A]):-
    dup(T,A).
