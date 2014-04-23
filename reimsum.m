%Takes a row vector v representing the coefficients of a (n-1)st degree
%polynomial and three scalars a, b, n. It returns c1, which is the midpoint
%Reimann sum from a to b with n iterations and c2, which is the actual
%integral of the row vector v from a to b
function [c1, c2] = reimsum(v, a, b, n)
%Integrate v
B = polint(v);
c = polevalu(B, b);
d = polevalu (B, a);
%Find actual integral by evaluating at a and b and subtracting
c2 = c - d;
%Initializing
c1 = 0;
%Width calculation
x = (b - a) / n;
for i = 0:(n - 1)
    %Midpoint calculation
    x1 = a +(x / 2) + i * x;
    %Height evaluation and multiplying it by width
    c1 = c1 + x * polevalu(v, x1);
end
end
