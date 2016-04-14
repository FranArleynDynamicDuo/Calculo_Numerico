%Algoritmo para obtener la solucion de un sistema mediante sustitucion
%hacia atras
%@param A: Matriz triangular
%@param b: vector solucion
%@return x: solucion del sistema
function [x] = sustAtras(A,b)        
n = length(A);
x(n)=b(n)/A(n,n);                   
  for i=n-1:-1:1                    
      sum=0;                        
      for j=i+1:n                   
          sum = sum + A(i,j)*x(j);  
      end                           
          x(i)=(b(i)-sum)/A(i,i);
  end         
