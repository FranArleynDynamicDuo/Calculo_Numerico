% Luis Vieira
% 07-41651
% Funcion que utliza el Metodo Iterativo de Jacobi para hallar la solucion
% del sistema
function [x] = jacobi(A, b, x0, delta, max1)
% Datos:
%       - A es una matriz invertible de orden NxN
%       - b es una matriz de orden Nx1
%       - x0 es una matriz de orden Nx1: el punto inicial
%       - delta es la tolerancia para x0
%       - max1 es el numero maximo de iteracion
% Resultados:
%       - x es una matriz de orden Nx1: aproximacion a la solucion de Ax=b

N = length(b);

for k= 1:max1
    for j =1:N
        x(j) = (b(j) - A(j, [1:j-1,j+1:N])*x0([1:j-1,j+1:N]))/A(j,j);
    end
    err=abs(norm(x' - x0));
    relerr = err/(norm(x)+eps);
    
    x0 = x';
   
    if( err < delta) || (relerr < delta)
         fprintf('Numero de iteraciones: %d \n',k)
        break
    end
end
 
x=x'; 