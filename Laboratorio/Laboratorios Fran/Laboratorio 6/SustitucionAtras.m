function [ x ] = SustitucionAtras( U,b )

    [m,n] = size(U);
    l = size(b);
    C = 0;
    d = 0;
    x = eye(l);
    
    
    if ((m == n) & (m == l(1)))
        
        x(n) = b(n) / U(n,n);

        for i = n - 2 : -1 : 1
            
            suma = 0.;
            
            for j = i + 1 : n
               
                suma = suma + U(i,j) * x(j);
                
            end
            
            x(i) = (b(i) - suma) / U(i,i);

        end
        
    elseif ((m ~= n))
    
        disp('La matriz no es cuadrada')
    
    elseif ((m == n) & (m ~= l))
    
        disp('La matriz y el vector no son compatibles')
        
    else 
        disp('Hay un error con la funcion y no entro en ningun if');
        
    end

end

