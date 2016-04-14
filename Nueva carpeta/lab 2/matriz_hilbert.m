%retorna una matriz de Hilbert de tamano n
%@param n, indica de que tamano es la matriz de Hilbert a devolver
%@return A: matriz hilbert de tamano n

function A = matriz_hilbert(n)
    for i=1:n
        for j=1:n
            A(i,j)=1/(i+j-1);
        end
    end
end
