loop(0):-!.
loop(N) :- N>0, write('Number : '),write(N),nl, N1 is N-1, loop(N1).