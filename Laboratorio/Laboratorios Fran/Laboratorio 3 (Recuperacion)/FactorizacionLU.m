function [L, U ] = FactorizacionLU( A )

    [m,n] = size(A);
    
    if (m == n)
        for k = 2 : n
        % cálculo de L
            for i = k : n
                A(i , k - 1) = A(i , k - 1) / A(k - 1 , k - 1);
            % Calculo de U    
                for j = k : n
                    A(i ,j) = A(i , j) - A(i , k - 1) * A(k - 1,j);
                end
            end
        end
        
%        
%    Si quiero obtener L y U completas cambio el output de la funcion por
%    [L,U] y luego aplico el codigo de aqui abajo
   
   U = triu(A);
   L = tril(A) + eye(size(A));

%    disp('U = ');
%    disp(U);
%    disp('L = ');
%    disp(L);
%
        
    elseif ((m ~= n))
    
        disp('La matriz no es cuadrada')
    
    elseif ((m == n) & (m ~= l))
    
        disp('La matriz y el vector no son compatibles')
        
    else 
        disp('Hay un error con la funcion y no entro en ningun if');
        
    end        
        
    
end

