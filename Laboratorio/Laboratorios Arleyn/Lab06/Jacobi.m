%Metodo iterativo de Jacobi

function [x1] = Jacobi(M,b,tol,maxi,x0)

n=size(M,1);
w=1;
g=1;
suma=0;

for k=1
    x1=x0+1;

    while norm(x1-x0)>tol
        
        x0=x1;
    
       for i=1:n
           
           suma = 0;
           
           for j=1:n
               
               if ((i ~= j) & (M(i,j) ~= 0))
      
                    suma= suma + (M(i,j)*x0(j));
               
               end
               
           end
           
           x1(i)= (b(i)-suma)/M(i,i);
           
       end
           
        if g>=maxi
           disp([cumplio el maximo de iteraciones])
           break
        
        end
        g=g+1;
    end
        
end
%   sol = traductor(x1);
 
  
% figure,
%     contourf(sol),grid on
%     title('Grafico de placa');
        
end