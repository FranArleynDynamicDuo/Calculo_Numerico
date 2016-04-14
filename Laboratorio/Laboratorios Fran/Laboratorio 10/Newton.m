function y = Newton(x,y)
%divididas
%       y =divididas(x,y) devuelve los coeficientes del polinomio
%       en diferencias divididas para (xi,yi).
n = length(x);
if n ~= length(y) 
  error('divdif:  sizes of input vectors must agree')
end
for i = 1:n-1
  for j=n:-1:i+1
    y(j) = (y(j) - y(j-1)) / (x(j) - x(j-i));
  end
end