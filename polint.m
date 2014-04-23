%Takes a row vector with n components representing a(n-1) degree polynomial
%and returns an (n+1) component row vector whose components are the
%anti-derivative of the input vector
function B = polint (A)
x = length(A);
%Reserve space
B = zeros (1, x + 1);
for i = 1:x
    %Antiderivative
    B(1, i) = A(1, i) / (x + 1 - i);
end
%Constant term
B(1, x+1) = 1;
end
