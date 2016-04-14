% Luis Vieira
% 07-41651
% Funcion que calcula el autovalor mas lejano a alfa y su autovector correspondiente
function [autovalor,x] = mpotenciasDes(A,d,x,epsilon,maxit)
% Datos:
%       - A es una matriz de orden NxN y diagonizable
% es decir: P = autovectoresde A, inv(P)
%D = inv(P)*A*P
% 		- alfa es la traslacion
% 		- epsilon es la tolerancia
% 		- max1 es el numero maximo de iteracion
% Resultados:
%       - lambda es el autovalor mas lejano de alfa
%       - V es ekl autovector asociado a lambda


% Inicializacion de los parametros
    n = length(A);

B = (A - d * eye(n,n));
for it=1:1:maxit
       y=x;
       x=B*x;
       x=x/norm(x,inf);
      
       if (norm(y-x,Inf) < epsilon)
           break;
       end
end
autovalor = (x'*A*x)/(x'*x);
 