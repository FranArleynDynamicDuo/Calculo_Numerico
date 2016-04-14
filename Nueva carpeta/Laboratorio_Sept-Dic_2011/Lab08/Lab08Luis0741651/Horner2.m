% Luis Vieira
% 07-41651
% Funcion Para determinar la anidacion DE HORNER
function [p] = Horner(a, x, xo)
%   Datos: vector a de tamano n, son  los coeficientes del polinomio, 
%          vector x de los coeficientes, 
%		    xo constante en donde desea evaluarse el polinomio.
%   Resultado:  
%			 p valor de la evaluacion del polinomio en xo
%

    n = length(a);
    b(n) = a(n);
    
    for j = n-1: -1: 1
        b(j) = a(j) + b(j+1)*(xo-x(j));
    end
    
    p = b(1);
    
% Nota: Esta funcion recibe el vector x para facilitar la evaluacion de los
% polinomios de la forma de Newton (incluyendo splines). A pesar de ser una
% modificacion del algoritmo de Horner original, sigue sus mismos
% principios.