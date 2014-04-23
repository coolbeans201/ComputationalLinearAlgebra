%Takes a matrix A and returns a matrix B whose columns form an orthogonal
%basis for the column space of A
function B = GramSchmidt(A)
%Row-reduce the matrix to get the pivot columns
[~, pivot]  = rref(A);
%Generate column space
C = A(:, pivot);
[m, n] = size(C);
%QR factorization initialization
B = zeros(m, n);
R = zeros(n, n);
for k= 1: n
    B(:,k) = C(:,k);
    for j =1:k-1
        R(j,k) = (B(:,j)'*C(:,k)) / (B(:, j)' * B(:, j));
        B(:,k) = B(:,k) - R(j,k)*B(:,j);
    end
end
end
