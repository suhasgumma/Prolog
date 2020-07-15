append(X,[],[X]):-!.
append(X,Y,[X|Y]).

remove_element([],_,[]):-!.
remove_element([H|T],E,T):- H=:=E,!.
remove_element([H|T],E,L):- remove_element(T,E,L1), append(H,L1,L).
