% Father facts
father(albert, bob).
father(albert, betsy).
father(albert, bill).
father(bob, carl).
father(bob, charlie).

% Mother facts
mother(alice, bob).
mother(alice, betsy).
mother(alice, bill).

% Grandparent rule: A grandparent is a parent of someone's parent
grandparent(GP, C) :- father(GP, P), father(P, C).  % Grandfather via father
grandparent(GP, C) :- father(GP, P), mother(P, C).  % Grandfather via mother
grandparent(GP, C) :- mother(GP, P), father(P, C).  % Grandmother via father
grandparent(GP, C) :- mother(GP, P), mother(P, C).  % Grandmother via mother.










