function [ x ] = SustitucionAdelante(L,b )

    disp(' ');
    [m,n] = size(L);
    l = size(b);
    disp(m);
    disp(n);
    disp(l(1));
    x = eye(l);
    
    
    if ((m == n) & (m == l(1)))
        
        x(n) = b(n) / L(n,n);

        for i = 2 : -1 : n
            
            suma = 0.;
            
            for j = 1 : i - 1
               
                suma = suma + L(i,j) * x(j);
                
            end
            
            x(i) = (b(i) - suma) / L(i,i);

        end
    
        disp('x = ');
        disp(x);
        
    elseif ((m ~= n))
    
        disp('La matriz no es cuadrada')
    
    elseif ((m == n) & (m ~= l))
    
        disp('La matriz y el vector no son compatibles')
        
    else 
        disp('Hay un error con la funcion y no entro en ningun if');
        
    end

end
