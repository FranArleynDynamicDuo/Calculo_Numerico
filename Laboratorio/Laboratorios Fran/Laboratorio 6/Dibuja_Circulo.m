%Funcion dibuja_circulo
%Dibuja los circulos de Gerschorin de una matriz
%@param A: matriz a la cual se le van a graficar

function []=Dibuja_Circulo(A,Nombre)
   %Declaracion de variables
   circ = 0:0.01:2*pi;
   n = length(A);
   x = zeros(length(circ),n);
   r = sum(abs(A),2)-abs(diag(A));   
   for i=1:n
       x(:,i) = r(i) * cos(circ) + real(A(i,i));
       y(:,i) = r(i) * sin(circ) + imag(A(i,i));
   end
      
   e = eig(A);
   
   plot(x,y,real(e),imag(e),'x')
   titulo = (strcat('CIRCULOS DE GERSCHORIN DE ',Nombre));
   title(titulo);
   legend('Disco 1','Disco 2','Disco 3','Autovalores');
       