%Returns c, which is the m by 1 vector representing the projection of an m by 1 vector b onto the column space of a
%matrix A
function c = Projection(A, b)
%Finding the column space of A and orthogonalizing the columns
B = GramSchmidt(A);
[m, n] = size (B);
%Initialization
c = zeros (m, 1);
for i = 1:n
    %Summing the projection components
    c = c + (dot(b', B(:, i))) / (dot(B(:,i),B(:,i))) .* B(:, i);
end
end
