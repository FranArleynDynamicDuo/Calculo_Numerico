%Algoritmo para obtener la solucion de un sistema mediante sustitucion
%hacia adelante
%@param A: Matriz triangular
%@param b: vector solucion
%@return x: solucion del sistema
function [x] = sustAdelante(A,b)        
n = length(A);
x(1)=b(1)/A(1,1);                  
        for i=2:n                  
            sum=0;                 
            for j=1:i-1            
                sum = sum + A(i,j)*x(j);    
            end                     
              x(i)=(b(i)-sum)/A(i,i); 
        end 