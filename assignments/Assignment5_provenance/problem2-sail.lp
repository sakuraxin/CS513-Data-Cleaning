% Below, we need the sets {1,2}, {1,2,3}, {1,2,3,5}, so let's define them: 
in_12(1).
in_12(2).

in_123(X) :- in_12(X).
in_123(3).

in_1235(X) :- in_123(X).
in_1235(5).

% hamming(Output, Input, Factor)
% Generates Hamming numbers by simple multiplication:
%    Output := Input * Factor
% The third argument (Factor) also acts as a *provenance annotation*,
% which can be used to create labeled edges: Input --Factor--> Output

% The first rule (rather: fact) gets us started and adds "1" as a Hamming number.
% The second rule generates multiples of 2 from numbers that have 1 or 2 as a factor.
% The third rule generates multiples of 3 from numbers that have 1,2, or 3 as a factor.
% The fourth rule generates multiples of 5 from numbers that have 1,2, 3, or 5 as a factor.
% limit set to Y < 1000
hamming(1,1, 1).
hamming(Y,X, 2) :- hamming(X,_, F), in_12(F),   Y = 2*X , Y<1000.
hamming(Y,X, 3) :- hamming(X,_, F), in_123(F),  Y = 3*X , Y<1000.
hamming(Y,X, 5) :- hamming(X,_, F), in_1235(F), Y = 5*X , Y<1000.

