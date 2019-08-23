
% hamming(Output, Input, Factor)
% Generates Hamming numbers by simple multiplication:
%    Output := Input * Factor
% The third argument (Factor) also acts as a *provenance annotation*,
% which can be used to create labeled edges: Input --Factor--> Output

% Getting started - add Hamming number 1:
hamming(1,1, 1). 

% If X is a Hamming number, so is Y = F*X (also record F in 3rd "annotation" column):
% limit set to Y < 1000
hamming(Y,X, 2) :- hamming(X,_, _), Y = 2*X, Y < 1000.
hamming(Y,X, 3) :- hamming(X,_, _), Y = 3*X, Y < 1000.
hamming(Y,X, 5) :- hamming(X,_, _), Y = 5*X, Y < 1000.


