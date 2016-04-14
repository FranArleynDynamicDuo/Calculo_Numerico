
% Sustitucion hacias atras

function[x] = sustitucionr(A,b)

n=size(A,1);
x=zeros(n,1);
d=zeros(n,1);

%Sustitución hacia atras
%Despeja la ultima variable y halla su valor  
x(n)=b(n)/A(n,n);
      
for i= n-1:-1:1
     % Con la solucion d; obtenida en la sustitución hacia adelante, se 
     %realiza un proceso de despeje a partir de la ultima fila de la
     % matriz U, hasta la primera sustituyendo las variables
     % halladas en la iteración anterior; la solucion que se encuentra es
     % la respuesta al sistema de ecuaciones
    x(i)=(b(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
end

end