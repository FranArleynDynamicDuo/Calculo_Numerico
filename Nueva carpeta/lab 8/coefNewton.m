%deuelve los coeficientes del polinomio mediante el metodo
%de interpolacion de Newton
%@param x: vector x del polinomio
%@param y: vector f(x) del polinomio
%@return salida: coeficientes del polinomio interpolante de Newton

function [salida] = coefNewton(x,y)
  n = length(x);
  A = zeros(n,n);
  
  %Construccion de la matriz triangular inferior
  A(1,1) = 1;
  for i = 2 : n
      A(i,1) = 1;
      for j = 2 : i;
          A(i,j) = A(i, j-1)*(x(i) - x(j - 1));
      end
  end
  [c] = sustAdelante(A, y);
  salida = c;
  %Se invierte el vector de coeficientes para facilitar el trabajo.
  for i=1:n % 
        salida(i) = c(n-i+1);
  end
end
