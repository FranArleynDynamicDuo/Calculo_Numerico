function [ L,Lt ] = Cholesky( A )

    [m, n] = size(A);
    L = eye(m);
    Lt = eye(m);
        
        
    if m ~= n 
       
        disp('No son matrices cuadradas');
        
    else

        for k = 1 : n
                
            % Calculamos la sumatoria
                
            suma1 = 0;
                
            for s = 1 : k - 1
               
                suma1 = suma1 + (L(k,s) * L(k,s));
            end
            
            L(k,k) = sqrt((A(k,k) - suma1));
            Lt(k,k) = L(k,k);
            
            % Calculo de L
 
            for i = k+1 : n
                
                suma3 = 0;
                
                for s = 1 : k - 1
                   
                    suma3 = suma3 + L(i,s) * L(k,s);
                    
                end
                
                L(i,k) = (A(i,k) - suma3) / L(k,k); 
                Lt(k,i) = (A(i,k) - suma3) / L(k,k); 

            end

        end
    end

end

