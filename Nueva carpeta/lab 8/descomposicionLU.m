%Obtiene la descomposicion LU de una matriz
%@param A: matriz que se va a descomponer
%@return L: matriz triangular inferior
%@return U: matriz triangular superior
function [L U]=descomposcicionLU(A)
    n=length(A);
    for k=2:n
     for i=k:n
        A(i,k-1)=A(i,k-1)/A(k-1,k-1);
        for j=k:n
            A(i,j)=A(i,j)-A(i,k-1)*A(k-1,j);
        end
     end
    end
    L = tril(A); 
    %se colocan los 1 en la diagonal de L
    for i=1:n
        L(i,i)=1;
    end
    U = triu(A);     
    
    
