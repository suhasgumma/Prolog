append([],X,[X]):-!.
append([H|T], Y, [H|A]):- append(T,Y,A).

nfibb(0,[1],1):-!.
nfibb(1,[1,1],1):-!.
nfibb(N,L,A):- M is N-1, O is N-2, nfibb(M,L1,A1), nfibb(O,_,A2),A is A1+A2, append(L1,A,L).