
function [d,c] = interp_newton(x, y)
%   Entrada: vectores  x e y = f(x) de tamano n



    % Inicializacion
    n = length(x);
    c = zeros(n);
    c(1:n,1) = y;
    
    % Calculo las diferencias divididas...
    for i = 2: n      %(i-1) -> se estan calculando f[x(i-1),...]
        for j = 2: i  %(j-1) -> grado de la diferencia dividida
		    c(i,j) = (c(i,j-1) - c(i-1,j-1))/(x(i)-x(i-j+1));
        end
    end
        
    d = diag(c);
    
        