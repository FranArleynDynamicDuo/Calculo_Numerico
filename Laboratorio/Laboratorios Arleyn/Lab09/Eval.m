function val = Eval(x,y,t)
%Evaluate polinomio de interpolación
%en forma de Newton. 
% newtoninterp(x,y,t) devuelve valores del polinomio de
%       interpolación de los puntos (xi,yi) evaluados en t 
y = divididas(x,y);
n = length(y);
val = y(n)*ones(size(t));
for i = n-1:-1:1
  val = val.*(t-x(i)) + y(i);
end

function y = divididas(x,y)
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
