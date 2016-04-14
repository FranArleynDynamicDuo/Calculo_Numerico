function [ coefi ] = Minimos_Cuadrados( x,y,grado )

    % Construimos la matriz de ecuaciones normales

    A = zeros(grado + 1,grado + 1);
    
    for i = 0 : grado
        for j = 0 : grado
            A(i + 1,j + 1) = sum(x.^(i + j));
        end
    end
    
    % Construimos el otro lado
    
    b = zeros(grado + 1,1);
    
    for i = 0 : grado
        
        aux = y .* (x.^(i));
        b(i + 1) = sum(aux);
        
    end

    coefi = ResolverCholesky(A,b);
    coefi = coefi';
    coefi = coefi(length(coefi):-1:1);

end

