function [ L, U ] = FactLU( A,fijar_L,valor )

    [m, n] = size(A);
    L = eye(m);
    U = eye(m);
    
    if m ~= n 
       
        disp('No son matrices cuadradas');
        
    else

        for k = 1 : n
            
            if fijar_L == true

                L(k,k) = valor;
                
                % Calculamos la sumatoria
                
                suma1 = 0;
                
                for s = 1 : k - 1
                   
                    suma1 = suma1 + L(k,s) * U(s,k);
                    
                end
                
                U(k,k) = (A(k,k) - suma1) / L(k,k);                  


            elseif fijar_L == false

                U(k,k) = valor;
                
                % Calculamos la sumatoria
                
                suma1 = 0;
                
                for s = 1 : k - 1
                   
                    suma1 = suma1 + L(k,s) * U(s,k);
                    
                end
                
                L(k,k) = (A(k,k) - suma1) / U(k,k);                
                

            else

                disp('No se especifico la variable fija');
                break;

            end

            % Calculo de U
            
            for j = k+1 : n
                
                suma2 = 0;
                
                for s = 1 : k - 1
                   
                    suma2 = suma2 + L(k,s) * U(s,j);
                    
                end
                
                U(k,j) = (A(k,j) - suma2) / L(k,k);

            end
            
            % Calculo de L
 
            for i = k+1 : n
                
                suma3 = 0;
                
                for s = 1 : k - 1
                   
                    suma3 = suma3 + L(i,s) * U(s,k);
                    
                end
                
                L(i,k) = (A(i,k) - suma3) / U(k,k);                

            end

        end
    end

end

