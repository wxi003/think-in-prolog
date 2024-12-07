# think-in-prolog
Explore and practice Prolog programming with examples, projects, and problem-solving exercises.

## /practices
- kk.pl: The implementation of Knights and Knaves puzzles:
  You are on an island where every inhabitant is either a knight or a knave. Knights always tell the truth, and knaves always lie.

  The program behaves as indicated below:
  Puzzle 1: You are approached by two people. The first one says: “We are both knaves”. What are they actually?<br>
        puzzle_1 :- .... <br>
        ?- puzzle_1.<br>
       [a=Knave,b=Knight]<br>
       false.
  
  Puzzle 2: You are approached by two people. The first one says: ”At least one of us is a knave”. What are they actually?<br>
        puzzle_2 :- ....<br>
       ?- puzzle_2.<br>
       [a=Knight,b=Knave]<br>
       false.
  
  Puzzle 3: You are approached by two people. The first one says: ”Either I am a knave or B is a knight.”. What are they actually?<br>
     puzzle_3 :- ....<br>
    ?- puzzle_3.<br>
    [a=Knight,b=Knight]<br>
    false.

  Puzzle 4: You are approached by two people. The first one says: ”We are the same”. Is the other person a knight or a knave?<br>
     puzzle_4 :- ....<br>
    ?- puzzle_4.<br>
    [a=Knave,b=Knight]<br>
    [a=Knight,b=Knight]<br>
    false.
  
