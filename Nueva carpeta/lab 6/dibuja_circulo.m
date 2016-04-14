%Funcion dibuja_circulo
%Dibuja los circulos de Gerschorin de una matriz
%@param A: matriz a la cual se le van a graficar

function []=dibuja_circulo(A)
   %Declaracion de variables
   circ = 0:0.01:2*pi;
   n = length(A);
   x=zeros(length(circ),n);
   r = sum(abs(A),2)-abs(diag(A));   
   for i=1:n
       x(:,i)=r(i)*cos(circ)+real(A(i,i));
       y(:,i)=r(i)*sin(circ)+imag(A(i,i));
      end
      
   e = eig(A);
   
   plot(x,y,real(e),imag(e),'x')
       
