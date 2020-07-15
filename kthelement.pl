%kth(L,K,E)

kth([H|_],1,H):-!.
kth([_|T],K,E):- K1 is K-1,kth(T,K1,E).