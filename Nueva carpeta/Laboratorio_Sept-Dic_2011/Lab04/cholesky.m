% Luis Vieira
% 07-41651
% Funcion Para hallar las matrices L  de la matriz A usando Cholesky
function [L] = cholesky(A)
%Parametros:
% A matriz cuadrada a resolver.
% Salida:  
% L - Matriz triangular inferior

n = size(A);
n = n(1);
L = zeros(n,n);
for k=1:n
    sum = 0;
    for s=1:k-1
        sum = sum + (L(k,s))^2;
    end
    L(k,k) = sqrt( A(k,k) - sum);
    for i=k+1:n
        sum = 0;
        for s=1:k-1
            sum = sum + L(i,s)*L(k,s);
        end
        L(i,k) = (A(i,k) - sum)/L(k,k);    
    end
end