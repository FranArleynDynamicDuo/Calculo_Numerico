% Procedimiento para crear la matriz vandermonde

function [A] = Vandermonde(x)

    n = length(x);
    A = zeros(n,n);
    
    %Construccion de la matriz de Vandermonde
    for i = 1 : n
        for j =  1 : n
            A(i,j) = x(i)^(j-1);
        end
    end
end