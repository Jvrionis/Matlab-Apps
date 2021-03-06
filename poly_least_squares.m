function [a, err] = poly_least_squares(x,y,M)
%-------------------------------------------------------------%
%   Program written using GNU Octave, compatable with MATLAB  %
%   James Vrionis                                             %
%   poly_least_squares.m                                      %
%                                                             %
%  Inputs:                                                    %
%    x - Vector x with nodes [x(1) ... x(N)],                 %
%    y - Vector y with data points                            %
%            [y(1) ... y(N) ] ~~ [x(1) ... x(N)]              %
%    M - Degree of the polynomial model                       %
%                                                             %
%  Outputs:                                                   %
%    a - Vector of coefficients representing the poly(1)      %
%    err - Error in the model vs the data in the 2-norm       %
%         p(x) = a(1) + a(2)*x + ... + a(n)*x^{n-1}           %
%-------------------------------------------------------------%

%-------------------------------------------------------------% 
n = length(x);
b = zeros(n,M);
%-------------------------------------------------------------%

%-------------------------------------------------------------%
for i=1:M+1
    b(:,i)= [x'.^(i-1)]
end
%-------------------------------------------------------------%

%-------------------------------------------------------------%
a=(b'*b)\(b'*y')
p = zeros(n,1);
%-------------------------------------------------------------%

%-------------------------------------------------------------%
for i = 1:M+1
    p=p+a(i)*x.^(i-1);
end
%-------------------------------------------------------------%

%-------------------------------------------------------------%
err = sum((p-y).^2);
%-------------------------------------------------------------%
