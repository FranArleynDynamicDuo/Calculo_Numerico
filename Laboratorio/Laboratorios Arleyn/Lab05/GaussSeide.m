%Metodo iterativo de Jacobi

function [x1] = GaussSeidel(A,b,tol,maxiter,x0)

    n=size(A,1);
    g=1;

    for k=1
        x1=x0+1;
        x2=x0+1;

        while (norm(x2-x0)>tol)

            x2 = x1;
            x0 = x1;
            x1(1)= (b(1)-((A(1,2)*x0(2))))/A(1,1);
            x0 = x1;

            for i=2:n-1

              x1(i) = (b(i)-((A(i,i-1)*x0(i-1))+(A(i,i+1)*x0(i+1))))/A(i,i);
              x0 = x1;

            end 

            x1(n) = (b(n)-((A(n,n-1)*x0(n-1))))/A(n,n);
            x0 = x1;

            if (g == maxiter)
                
               disp('Se ha llegado a la iteracion maxima');
               break

            end
            g=g+1;
        end
    end
end