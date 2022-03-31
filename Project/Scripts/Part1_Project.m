% Maths Tools: MATLAB Project
% Authors: Kadriye Nur Bakirci
%          Miguel Angel Guzman

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART 1.1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Eigenvalues and eigenvectors
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% For each matrix Ai, use eig to get a matrix D whose diagonal entries
% are the eigenvalues of Ai, and a matrix P whose columns are associated 
% eigenvectors.
% Record P and D, and inspect D to be sure the eigenvalues produced by eig 
% agree with what you calculated by hand in the previous question.
% Calculate the product AP and P D for each Ai, to verify that AP = PD.

% First we define matrices A1, A2, A3, A4, A5
A1 = [5 2; 4 3];
A2 = [4 3; 3 4];
A3 = [1 1; 1 1];
A4 = [0 1; 1 0];
A5 = [25 0 20; 0 1 0; 20 0 41];

% Eigenvalues & Eigenvectors Computations
[P1, D1] = eig(A1)
[P2, D2] = eig(A2);
[P3, D3] = eig(A3);
[P4, D4] = eig(A4);
[P5, D5] = eig(A5);

% Do it again
% TODO - Testing matrix comparison
bo = isequal(A1*P1, P1*D1)

if isequal(round(A1*P1, 2), round(P1*D1, 2))
    fprintf("Good.");
else
    fprintf("Bad");
end



