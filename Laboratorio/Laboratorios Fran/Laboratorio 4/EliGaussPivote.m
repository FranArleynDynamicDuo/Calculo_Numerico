function [A,b] = EliGaussPivote(A,b,pivote)

    disp(' ');
    [m,n] = size(A);
    l = size(b);
    C = 0;
    d = 0;
    disp(m);
    disp(n);
    disp(l(1));
    
    
    if ((m == n) & (m == l(1)))
        
        % Algoritmo de pivote
        
        if (pivote == true)

            for k = 1 : (n - 1)

                max = 0;
                imax = 1;

                for i = k + 1 : n

                    if (abs(A(i,k) > max))

                        max = A(i,k);
                        imax = i;

                    end
                end

                for j = k: n

                    aux = A(imax,j);
                    A(imax,j) = A(k,j);
                    A(k,j) = aux;

                end
            
            end
                
            % Algoritmos principal
            
            for i = k + 1 : n
                
                alpha = A(i,k) / A(k,k);
                
                for j = k + 1 : n
                    A(i,j) = A(i,j) - (alpha * A(k,j));
                    b(i) = b(i) - (alpha * b(k));
                end
            end
        end
    
    elseif ((m ~= n))
    
        disp('La matriz no es cuadrada')
    
    elseif ((m == n) & (m ~= l))
    
        disp('La matriz y el vector no son compatibles')
        
    else 
        disp('Hay un error con la funcion y no entro en ningun if');
        
    end
    
end

