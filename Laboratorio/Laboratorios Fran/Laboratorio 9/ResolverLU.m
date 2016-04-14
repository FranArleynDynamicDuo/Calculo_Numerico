function [ x ] = ResolverLU( A,b,fijar_L,valor )

    [m, n] = size(A);
    l = length(b);
    x = zeros(l,1);
    y = zeros(l,1);
    
    if m ~= n 
       
        disp('No son matrices cuadradas');
    
    elseif (l ~= m)
        
        disp('El vector no es compatible');
        
    else

        [L,U] = FactLU(A,fijar_L,valor);
        
        %%%%%%% RESOLVER Ly = b %%%%%%%
        
        y(1) = b(1) / L(1,1);
        
        for i = 2 : n
            
            suma1 = 0;
        
            for j = 1 : i - 1
                
                suma1 = suma1 + L(i,j) * y(j);
            
            end
            
            y(i) = (b(i) - suma1) / L(i,i);
        
        end
        
        %%%%%%% RESOLVER Ux = y %%%%%%%
        
        x(n) = y(n) / U(n,n);
        
        for i = n - 1 : -1 : 1
            
           suma1 = 0;
        
           for j = i + 1 : n
                
               suma1 = suma1 + U(i,j) * x(j);
            
           end
            
           x(i) = (y(i) - suma1) / U(i,i);
        
        end       
        

    end

end

