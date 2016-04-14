% Luis Vieira
% 07-41651
% Funcion Matriz Vandermonde
function A = Vandermonde(n)
% Parametros
% n - Tamano de la matriz
% Salida:
% A - Matriz de Vandermonde

A = ones(n,n);

for i=1:n
    for j=1:n
        A(i,j)=(1 + i)^(j-1);
    end
end