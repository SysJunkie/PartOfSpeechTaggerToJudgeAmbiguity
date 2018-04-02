:- [bigram_snehameh]. 
:- [unigram_snehameh].
calc_prob(ListOfWords,SmoothedLog10Probability):- calc_prob(ListOfWords,0,SmoothedLog10Probability).
calc_prob([_],N,N).
calc_prob([],N,N).
calc_prob([W1,W2|L], N , S) :- prob(W1,W2,X),calc_prob([W2|L], X, S1), S is S1+X.

prob(W1,W2,X):- (bigram(X1,W1,W2)->X1=X1;X1=0), (unigram(X2,W1)->X2=X2;X2=0),V is 14794, X is log10((X1+1)/(X2+V)).
