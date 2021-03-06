function I = int_Simpsons_rule(fun,a,b,n)
%-------------------------------------------------------------%
%   Program written using GNU Octave, compatable with MATLAB  %
%   James Vrionis                                             %
%   int_Simpsons_rule.m                                       %
%                                                             %
%-------------------------------------------------------------%

%-------------------------------------------------------------%
m=n-1;
h=(b-a)/m;
for j=0:2*m
  x(j+1) = a+(j*(h/2));
end
%-------------------------------------------------------------%

%-------------------------------------------------------------%
y = fun(x)
I = (h/6)*(y(1)+2*sum(y(3:2:end-1))+4*sum(y(2:2:end-1))+y(end));
%-------------------------------------------------------------% 
