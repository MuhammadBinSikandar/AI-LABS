parent(john, mary).   
parent(john, tom).      
parent(mary, sam).      
parent(tom, alice).      

male(john).              
male(tom).               
male(sam).               
female(mary).            
female(alice).           

brother(X, Y) :- 
    parent(P, X), 
    parent(P, Y), 
    male(X), 
    X \= Y.

uncle(Uncle, X) :-
    parent(Parent, X),
    brother(Uncle, Parent).
