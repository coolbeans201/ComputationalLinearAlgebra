%Takes in a n component row vector and a scalar and returns a scalar which
%is the evaluation of the input scalar with the given row vector
%represening the coefficients of a (n-1)st degree polynomial
function f = polevalu(A,x)
%Initializing
f = 0;
z= length (A);
for i = 1:z
    %Summing the function at each coefficient and power
    f = f + A(1, i) * x^(z - i);
end
end
