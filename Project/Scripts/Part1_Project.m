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

% Insert matrices in a row matrix array for more efficient computations
matrixArray = { [5 2; 4 3], ...             % Matrix A1
                [4 3; 3 4], ...             % Matrix A2
                [1 1; 1 1], ...             % Matrix A3
                [0 1; 1 0], ...             % Matrix A4
                [25 0 20; 0 1 0; 20 0 41]   % Matrix A5
              };

% Get size of matrix cell array for loop iterations
[rows, columns] = size(matrixArray);
          
% Computation, printing and storage of P and D for all the matrices
for i = 1 : columns
    % Print current matrix name and show the matrix in console
    fprintf("Matrix A%d:\n", i);
    cell2mat(matrixArray(1,i))
    % Computation of P and D using eig() built-in function
    [P, D] = eig(cell2mat(matrixArray(1,i)))
    % P matrices are stored in row 2 of the 2-dim array
    matrixArray{2,i} = P;
    % D matrices are stored in row 3 of the 2-dim array
    matrixArray{3,i} = D;
end

% Verify AP = PD condition for each matrix
for i = 1 : columns
    fprintf("Evaluating AP = PD for Matrix A%d...\n", i);
    compareAP_PD(cell2mat(matrixArray(1,i)), ... % Matrix argument
                 cell2mat(matrixArray(2,i)), ... % P argument
                 cell2mat(matrixArray(3,i)));    % D argument
end

% Function that verifies AP = PD condition for a given matrix
function compareAP_PD(A, P, D)
    % Matrix components are rounded to 3 decimals to equal precision.
    % This is required for an exact matrix comparison according MATLAB doc.
    if isequal(round(A*P, 3), round(P*D, 3))
        fprintf("A*P = PD is satisfied for this matrix.\n");
    else
        fprintf("A*P = PD is NOT satisfied for this matrix.\n");
    end
end