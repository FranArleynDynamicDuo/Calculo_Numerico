
% Funcion Para determinar la anidacion DE HORNER

function [p] = Horner(a, xo)
%   Datos: vector a de tamano n, son  los coeficientes del polinomio, 
%		    xo constante en donde desea evaluarse el polinomio.
%   Resultado:  
%			 p valor de la evaluacion del polinomio en xo
%

n = max(size(a)) -1;
p=a(1)*ones(size(xo));

for i=1:n
    
    p = p*xo + a(i+1);
    
end
    