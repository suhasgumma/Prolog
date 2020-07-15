%Considering the head of the list as the top


%push the element at the start
%first 2 args will be the stack and element to be pushed..
push(L,E,[E|L]).

%pop the element at the top.....
%first arg is the list...second arg is the list after popped....third arg is the popped element
pop([H|T],T,H).


%Pop when stack is empty....
pop([],[],'null'):-!.


%Peek the first element.....
%first arg is list and the second arg is the top element..........
peek([H|_],H).

%peek for empty stack...
peek([],'null').


