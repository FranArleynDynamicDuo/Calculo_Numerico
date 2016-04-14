%deuelve los coeficientes del polinomio interpolante de Vandermonde
%@param x: vector x del polinomio
%@param y: vector f(x) del polinomio
%@return salida: coeficientes del polinomio interpolante de Vandermonde

function [salida] = coefVand(x, y, p)
  n = length(x);
  A = zeros(n, n);
  
  %Construccion de la matriz de Vandermonde
  for i = 1 : n
     for j =  1 : n
        A(i,j) = x(i)^(j-1);
     end
  end
  %Resolucion del sistema de ecuaciones Ax = y utilizando factorizacion LU
  
  [L,U] = descomposicionLU(A);  
  [c0] = sustAdelante(L, y);
  [c] = sustAtras(U, c0);
  salida = c;
  %Se invierte el vector de coeficientes para facilitar el trabajo.
  for i=1:n % 
        salida(i) = c(n-i+1);
    end
end
