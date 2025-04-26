% Facts
person(maria, 25).
person(joao, 30).
person(ana, 20).
person(lucas, 28).
person(julia, 22).

% Rule: age greater than N
older_than(Name, N) :-
    person(Name, Age),
    Age > N.

% Ask the user
ask_age :-
    write('Show people older than: '),
    read(Input),
    nl,
    list_people_older_than(Input).

% Loop through and print all
list_people_older_than(N) :-
    older_than(Name, N),
    write('- '), write(Name), nl,
list_people_older_than(_).  % graceful end
