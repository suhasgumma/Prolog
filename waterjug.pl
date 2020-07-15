%Defining max allowed.... unnecessary for now....
max(4,3)

%Finding path between startX,Y and EndX,Y.....
%Visited and path are the third and 4th attributes
findPath(Sx,Sy,Sx,Sy,Visited,Visited).

%there are 8 possible next steps.....

%Making the first one full....
findPath(Sx,Sy,Ex,Ey,Visited,Path):-
    Sx<4,NewSx is 4,\+member([NewSx,Sy],Visited),findPath(NewSx,Sy,_,_,[[NewSx,Sy]|Visited],Path).

%Making the second jug full....
findPath(Sx,Sy,Ex,Ey,Visited,Path):-
    Sy<4,NewSy is 4,\+member([Sx,NewSy],Visited),findPath(Sx,NewSy,_,_,[[Sx,NewSy]|Visited],Path).

%Empty the first jug.....
findPath(Sx,Sy,Ex,Ey,Visited,Path):-
    Sx>0,NewSx is 0,\+member([NewSx,Sy],Visited),findPath(NewSx,Sy,_,_,[[NewSx,Sy]|Visited],Path).

%Empty the second jug.....
findPath(Sx,Sy,Ex,Ey,Visited,Path):-
    Sy>0,NewSy is 0,\+member([Sx,NewSy],Visited),findPath(Sx,NewSy,_,_,[[Sx,NewSy]|Visited],Path).

%Pour water from second jug to first jug and some water is left in the second jug....
findPath(Sx,Sy,Ex,Ey,Visited,Path):-
    Sx+Sy > 4,Sx <4,NewSx is 4,NewSy is Sy-(4-Sx),\+member([NewSx,NewSy],Visited),findPath(NewSx,NewSy,_,_,[[NewSx,NewSy]|Visited],Path).


%Pour water from first jug to second jug and some water is left in the first jug....
findPath(Sx,Sy,Ex,Ey,Visited,Path):-
    Sx+Sy > 3,Sy <4,NewSx is Sx-(3-Sy),NewSy is 3,\+member([NewSx,NewSy],Visited),findPath(NewSx,NewSy,_,_,[[NewSx,NewSy]|Visited],Path).

%Pour water from first jug to second jug and No water is left in the second jug....
findPath(Sx,Sy,Ex,Ey,Visited,Path):-
    Sx+Sy =< 4,NewSx is Sx+Sy ,NewSy is 0,\+member([NewSx,NewSy],Visited),findPath(NewSx,NewSy,_,_,[[NewSx,NewSy]|Visited],Path).

%Pour water from second jug to first jug and no water is left in the second jug....
findPath(Sx,Sy,Ex,Ey,Visited,Path):-
    Sx+Sy =< 3,NewSx is 0,NewSy is Sx+Sy,\+member([NewSx,NewSy],Visited),findPath(NewSx,NewSy,_,_,[[NewSx,NewSy]|Visited],Path).