%algoritmo de diferencias divididas
%@param x: vector x del polinomio
%@param y: vector y del polinomio
%@param A: matriz necesaria para el algoritmo.
%@return c: coeficientes deseados
%@return A:matriz de las diferencias divididas

function [c A]=diferencias_divididas(x,y,A)
n = length(x);
  
  A(1,1) = 1;
  for i = 2 : n
      A(i,1) = 1;
      for j = 2 : i;
          A(i,j) = A(i, j-1)*(x(i) - x(j - 1));
      end
  end
  
  c = sustAdelante(A,y);
  
  %se invierte el vector c para que sea adecuado como entrada para evalHorn
  c2 = c; 
  for i=1:n
        c(i)=c2(n-i+1);
  end

  
  

