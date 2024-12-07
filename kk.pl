% A person is either a knight or a knave.
person(knave).
person(knight).

% A helper method to make first letter capitalized
capitalized(knight, 'Knight').
capitalized(knave, 'Knave').

% A knave always lies (i.e., the statement is negated).
truth(knave, Statement) :- not(Statement).

% A knight always tells the truth.
truth(knight, Statement) :- Statement.

% Puzzle 1: The first person says, "We are both knaves."
puzzle_1 :-
    person(A), person(B),
    truth(A, (A = knave, B = knave)),
    capitalized(A, A1),
    capitalized(B, B1),
    write([a=A1, b=B1]), nl,
    fail. % To find all solutions.

% Puzzle 2: The first person says, "At least one of us is a knave."
puzzle_2 :-
    person(A), person(B),
    truth(A, (A = knave ; B = knave)),
    capitalized(A, A1),
    capitalized(B, B1),
    write([a=A1, b=B1]), nl,
    fail.

% Puzzle 3: The first person says, "Either I am a knave or B is a knight."
puzzle_3 :-
    person(A), person(B),
    truth(A, (A = knave ; B = knight)),
    capitalized(A, A1),
    capitalized(B, B1),
    write([a=A1, b=B1]), nl,
    fail.

% Puzzle 4: The first person says, "We are the same."
puzzle_4 :-
    person(A), person(B),
    truth(A, (A = B)),
    capitalized(A, A1),
    capitalized(B, B1),
    write([a=A1, b=B1]), nl,
    fail.
