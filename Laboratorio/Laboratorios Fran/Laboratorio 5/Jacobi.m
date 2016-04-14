function [x1] = Jacobi(F,s,tol,maxiter,x0)

    n = size(F,1);
    iteracion = 1;

    for k = 1
        
        x1 = x0 + 1;

        while norm(x1-x0) > tol

            x0 = x1;

           for i = 1 : n

               Mo = find(F(i,1:n));
               so = length(Mo);
               suma = 0;
               G = 1;
               
               while (G <= so) 

                        suma = suma + (F(i,Mo(G))*x0(G));
                        G  = G + 1;
                        
               end

               x1(i) = (s(i)-suma)/F(i,i);

           end

            if iteracion >= maxiter
                
               disp('Se ha llegado a la iteracion maxima')
               break

            end
            
            iteracion = iteracion + 1;
            
        end
        
    end
    
        
    disp('Se hicieron ');
    disp(iteracion);
    disp('iteraciones');
        
end