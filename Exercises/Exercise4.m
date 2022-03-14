matrix1 = [1 2 3; 4 5 6; 7 8 9];
matrix2 = [1 2 3; 4 5 6; 7 8 9];
matrix3 = [1 2 3; 4 5 6; 7 8 9; 10 11 12];

matrixSum = add(matrix1, matrix3);
matrixMult = mult(matrix1, matrix3);


function M = add(M1, M2)    
    if size(M1) == size(M2)
        fprintf("Matrix are equal size, addition can be done.");
        M = M1 + M2;
    else
        fprintf("Matrix are NOT equal size, addition can´t be done.");
        M = [];
    end
end

function M = mult(M1, M2)    
    if size(M1, 2) == size(M2, 1)
        fprintf("Number of columns of first matrix match number of rows of second matrix.");
        M = M1 * M2;
    else
        fprintf("Number of columns of first matrix DO NOT match number of rows of second matrix.");
        M = [];
    end
end