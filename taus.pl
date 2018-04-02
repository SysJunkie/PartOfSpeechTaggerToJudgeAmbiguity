:- [count1].
:- [count2].
tau(W,T,P) :- prob1(W,T,P).
prob1(W,T,P) :- count1(C1,W,T),count2(C2,T), P is C1/C2.