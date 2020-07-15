append(X,[],[X]):-!.
append(X,Y,[X|Y]).

tail([],[]).
tail([_|T], T).

remove_alternate([],[]):- !.
remove_alternate([H|T], Y):- tail(T,T1), remove_alternate(T1,Y1),append(H,Y1,Y).