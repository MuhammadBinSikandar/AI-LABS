father(javed,sikandar).
father(sikandar, muhammad).
father(sikandar, khizar).
father(sikandar, fizza).
father(sikandar, uswa).
mother(uzma, muhammad).
mother(uzma, khizar).
mother(uzma, fizza).
mother(uzma, uswa).

grandfather(X, Z) :- father(X, Y), father(Y, Z).
sibling(X, Y) :- father(F, X), father(F, Y), X \= Y.
parent(X, Y) :- father(X, Y); mother(X, Y).
