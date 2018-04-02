:- [count3].
:- [count2].
sigma(T1,T2,P) :- prob2(T1,T2,P).
prob2(T1,T2,P) :- count3(C1,T1,T2),count2(C2,T1), P is C1/C2.