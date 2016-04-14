function [A] = Matriz_Vandermonde(x)

    n = length(x);
    A = zeros(n,n);
    
    
    for i = 1 : n
        for j =  1 : n
            A(i,j) = x(i)^(j-1);
        end
    end
end