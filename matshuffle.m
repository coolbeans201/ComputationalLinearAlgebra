%Takes two matrices A and B and forms a matrix C, where the odd-numbered
%columns of C are the columns of A and the even-numbered columns of C are
%the columns of B
function C = matshuffle (A, B)
%Check for size
if (size (A) ~= size (B))
    error ('Sizes are not the same')
end
[m,n] = size (A);
%Reserve space for C
C = zeros (m,2*n);
for column = 1:2*n
    %Check if row is even or odd
    if mod(column,2) == 0
        C (:, column) = B (:, column/2);
    else
        %Add 1 to make it an integer
        x = column + 1;       
        C (:, column) = A (:, x/2);
    end
end
end
