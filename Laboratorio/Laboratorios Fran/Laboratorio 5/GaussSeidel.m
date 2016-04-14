function [x1] = GaussSeidel(F,s,tol,maxiter,x0)

    n = size(F,1);
    iteracion = 1;

    for k = 1
        
        x1 = x0 + 1;
        x2 = x0 + 1;

        while (norm(x2-x0) > tol)

            x2 = x1;
            x0 = x1;
            x1(1) = (s(1)-((F(1,2)*x0(2))))/F(1,1);
            x0 = x1;

            for i = 2 :n-1

              x1(i) = (s(i)-((F(i,i-1)*x0(i-1))+(F(i,i+1)*x0(i+1))))/F(i,i);
              x0 = x1;

            end 

            x1(n) = (s(n)-((F(n,n-1)*x0(n-1))))/F(n,n);
            x0 = x1;

            if (iteracion >= maxiter)
                
               disp('Se ha llegado a la iteracion maxima');
               break

            end
            
            iteracion = iteracion + 1;
        end
        
    end
    
    disp('Se hicieron ');
    disp(iteracion);
    disp('iteraciones');
    
end