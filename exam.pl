store:- write('enter size: '),read(Size),write('Enter file name : '),read(File),go(Size,File).

go(0,_):-!.
go(L,File):-
    write('Enter name: '),read(Name),
    write('Enter Department:  '),read(Department),
    write('Enter Salary:    '), read(Salary),
    append(File),
    write('employee('),
    write(Name),
    write(','),
    write(Department),
    write(',')
    ,write(Salary),write(').'),nl,
    told,
    Ls is L-1,
    go(Ls,File).