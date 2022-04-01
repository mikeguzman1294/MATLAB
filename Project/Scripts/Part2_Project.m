% Maths Tools: MATLAB Project
% Authors: Kadriye Nur Bakirci
%          Miguel Angel Guzman

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART 1.2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matrix Inverse and Infinite Series
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PURPOSE
% To see examples for which the matrix series I+C+C^2+. . .+C^k does
% converge to (I - C)-1 and examples for which it does not.
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

% Series matrix should converge to (I-C)^-1, so it is computed for analysis
fprintf("Inverse matrix of (I-C):\n");
inv(I - C)

% Declaration and assignment of 'k' value for the series
k = 10;

% Print analysis purpose for section
fprintf("S matrix analysis for each 'k' until k = %d.\n", k);

% Loop for different values of 'k' of the series equation
% Print matrix S in console each time to analyze matrix convergence
for i = 1 : k
    fprintf("Current k value: %d\n", i);
    % Series equation definition
    S = I + C * S
end

% END OF SECTION 1
% -------------------------------------------------------------------------

% SECTION 2
% One way to check whether S is close to the inverse of (I - C) is to see
% whether the norm of (I - C)S - I is small. Experiment with different
% values of k to find how many terms of the series you must use in
%                  S = I + C + C^2 + . . . + C^k
% in order to get the norm of (I - C)S - I to be 10^-10 or smaller.

% Reset matrix S to value of I3
S = I;

% Re-assignment of 'k' value for the series
k = 10;

% Initialize an empty row vector of k elements to store norm results
y = zeros(1,k);

% Print analysis purpose for section
fprintf("Norm of (I-C)S-I analysis for each 'k' until k = %d.\n", k);

% Loop for different values of 'k' of the series equation
% Print norm of (I - C)S - I in console each time to analyze its size
for i = 1 : k
    fprintf("Current k value: %d\n", i);
    % Series equation definition
    S = I + C * S;
    % Variable to store/print the norm of (I - C)S - I for each k iteration
    n = norm((I-C) * S - I)
    % Store each norm value in the y-axis vector for plotting
    y(1,i) = n;
end

% Norm of (I-C)S-1 plot Section
% Create x-axis row vector of k elements
x = [1:k];
%Select figure
figure(1)
% Display the plot
plot(x,y,'r')
title('Norm of (I-C)S-1 for each k')
xlabel('k')
ylabel('Norm of (I-C)S-1')

% END OF SECTION 2
% -------------------------------------------------------------------------