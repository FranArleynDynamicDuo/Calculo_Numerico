
%Sustitucion hacia adelante

function[d] = sustitucionp(A,b)

n=size(A,1);
x=zeros(n,1);
d=zeros(n,1);

%Despeja la primera variable y halla su valor
d(1)= b(1)/A(1,1);

for i= 2:n
     % Se realiza un proceso de despeje a partir de la primera fila de la
     % matriz A, hasta la ultima sustituyendo las variables
     % halladas en la iteración anterior
   d(i)=(b(i)-A(i,1:i-1)*d(1:i-1))/A(i,i);
end

end
