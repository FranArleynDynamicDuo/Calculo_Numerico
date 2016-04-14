%Evalua un polinomio con coeficientes de la forma 
%coef(1) +coef(2)*x + coef(3)*x^2 +...+ coef(n)x^n-1
%@param coef: vector con los coeficientes en el orden mencionado arriba
%@param x: vector con las X con las que se va a evaluar el polinomio
%@return y: vector con el resultado de evaluar el polinomio en cada una de
%las x.
function [y]=evalua_polinomio(coef,x)

    ncoef = length (coef);
    tamx = length (x);
    y = zeros(tamx,1);
    for j=1:1:tamx
        for i=1:1:ncoef
            y(j) = y(j) + coef(i)*(x(j)^(ncoef-i));
        end
    end