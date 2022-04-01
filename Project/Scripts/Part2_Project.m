% Maths Tools: MATLAB Project
% Authors: Kadriye Nur Bakirci
%          Miguel Angel Guzman

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART 1.2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matrix Inverse and Infinite Series
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PURPOSE
% To see examples for which the matrix series I+C+C^2+. . .+C^k does
% converge to (I ? C)^1 and examples for which it does not.
% Let the matrix C given by:
% 
%         1   |1 -1  5|
%    C = -- * |0  1 -2|
%        10   |1  3 -3|
%
% Type the following lines to calculate I + C + C2 + . . . + Ck for several
% values of k.
%                     I = eye(3); S = I;
%                     S = I + C - S

% -------------------------------------------------------------------------
% SECTION 1
% Use the up arrow key to execute the sum line repeatedly and watch to see 
% that this series does seem to converge.
% (The first time you execute this line, you get S = I + C;
% the second time you get I + C + C^2; etc.)
% How many times must you repeat it until the matrix S seems to stop
% changing, at least as far as what you see on the screen?

% Declaration of matrix C
C = 1/10 * [1 -1 5; 0 1 -2; 1 3 -3];

% Creation of Identity Matrix I3 (3x3)
I = eye(3);

% Declare matrix S and set it to a starting value of I3
S = I;

% Series equation definition
S = I + C * S

% END OF SECTION 1
% -------------------------------------------------------------------------

% SECTION 2
% One way to check whether S is close to the inverse of (I - C) is to see
% whether the norm of (I - C)S - I is small. Experiment with different
% values of k to find how many terms of the series you must use in
%                  S = I + C + C^2 + . . . + C^k
% in order to get the norm of (I ? C)S ? I to be 10^?10 or smaller.

% Declare a variable to store the norm of (I - C)S - I
n = norm((I-C) * S - I)

