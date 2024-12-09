% Direct enclosures
encloses_direct(b1, b2).
encloses_direct(b1, b5).
encloses_direct(b2, b3).
encloses_direct(b2, b4).
encloses_direct(b5, b6).
encloses_direct(b6, b7).

encloses(X, Y) :- encloses_direct(X, Y).
encloses(X, Y) :-
    encloses_direct(X, Z),
    encloses(Z, Y).
