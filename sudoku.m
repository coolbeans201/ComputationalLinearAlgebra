%Verify if the sum of all the rows and all the columns of a matrix are the
%same
function sum1 = sudoku (A)
[m,n] = size(A);
%Check to see if matrix is square
if m ~= n
    error('Matrix is not square')
end
row = 1;
while row <= m
%Check to see if sum of row of matrix is equal to sum of row of transposed
%matrix
    sum1 = sum(A(row,:));
    A = A';
    sum2 = sum(A(row,:));
%Precision check
    x = (abs(sum1 - sum2) < 0.0000001);
    row = row + 1;
end
if x
    disp(sum1);
else
    disp('Sums are not the same');
end
end
