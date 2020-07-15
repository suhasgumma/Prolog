/*  Store is a predicate with 0 arity.
    It does all the work of reading Name, Department and salary 
    from the user..and entering it in a file
*/

/*  When prompted to enter file name....
    Enter 'lab.txt' for readLine to work.
    Don't forget to wrap it inside ' '.
*/
store:- 
    write('enter number of entries: '),
    read(Size),
    get(Size).

%Helper Prediacte for store..
get(0):-!.
get(L):-
    write('Enter name: '),read(Name),
    write('Enter Department:  '),read(Department),
    write('Enter Salary:    '), read(Salary),
    append('lab.txt'),
    write('employee('),
    write(Name),
    write(','),
    write(Department),
    write(',')
    ,write(Salary),write(').'),nl,
    told,
    Ls is L-1,
    get(Ls).



/*Reads the s.txt file and if the clauses are written correctly, every clause is 
read perfectly and entered into the List...*/
readLines(Lines) :-
    open('lab.txt', read, Str),
    read_file(Str,Lines),
    close(Str),!.

read_file(Stream,[]) :-
    at_end_of_stream(Stream).

read_file(Stream,[X|L]) :-
    \+ at_end_of_stream(Stream),
    read(Stream,X),
    read_file(Stream,L).


/*The first type of query.....
    Arity = 2,
    Prediacte-employee...
    First arg-  Department,
    Second Arg - Names of the employees working in that particular department...
*/
employee(Dep,Names):-
    readLines(Lines),
    getNames(Lines, Names,Dep).

/*  Helper predicate for employee....
    checks the department in clause from txt file...
    Arity - 3,
    1rst Arg - clause in the txt file..
    2nd arg - Department to check against.....
    3rd arg - Name of the Employee.....
*/ 
checkDepAndGiveName(employee(Name,Dep,_),Dep,Name).


/*  Helper Predicate for employee.....
    Get the list of names of a particular department...
    Arity - 3,
    1rst Arg - List of clauses,
    2nd arg - Names of the employees of that particular department,
    3rd arg - Department.
*/
getNames([],[],_).
getNames([H|T],[Name|A],Dep):-
    checkDepAndGiveName(H,Dep,Name),!,
    getNames(T,A,Dep).

getNames([_|T],A,Dep):-
    getNames(T,A,Dep).