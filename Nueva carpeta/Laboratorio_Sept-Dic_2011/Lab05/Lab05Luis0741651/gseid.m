% Luis Vieira
% 07-41651
% Funcion que utliza el Metodo Iterativo de Gauss-Seidel para hallar la 
% solucion del sistema
function X = gseid(A, B, P, delta, max1)
% Datos:
%       - A es una matriz invertible de orden NxN
%       - B es una matriz de orden Nx1
%       - P es una matriz de orden Nx1: el punto inicial
%       - delta es la tolerancia para P
%       - max1 es el numero maximo de iteracion
% Resultados:
%       - X es una matriz de orden Nx1: aproximacion a la solucion de AX=B
N = length(B);

for k=1:max1
  
  for j=1:N
    
    if (j==1)
        X(1)=(B(1)-A(1,2:N)*P(2:N))/A(1,1);
      elseif (j==N)
	X(N)=(B(N)-A(N,1:N-1)*(X(1:N-1))')/A(N,N);
      else
	
        X(j)=(B(j)-A(j,1:j-1)*X(1:j-1)'-A(j,j+1:N)*P(j+1:N))/A(j,j);
      end
   end
   err=norm(X'-P);
  % relerr=err/(norm(X)+eps);
   P=X';
      if (err<delta)
fprintf('Numero de iteraciones: %d \n',k)
     break
   end
end

X=X';