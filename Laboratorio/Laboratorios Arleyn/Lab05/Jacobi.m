function [x1] = Jacobi(F,s,tol,maxiter,x0)

    n=size(F,1);

    g=1;

    for k=1
        
        x1 = x0 + 1;

        while norm(x1-x0) > tol

            x0=x1;

           for i=1:n

               Mo = find(F(i,1:n));
               so = length(Mo);
               suma = 0;
               T=1;
               while (T <= so) 

                        suma = suma + (F(i,Mo(T))*x0(T));
                        T  =T+1;
                        
               end

               x1(i) = (s(i)-suma)/F(i,i);

           end

            if g >= maxiter
               disp('Se ha llegado a la iteracion maxima')
               break

            end
            g=g+1;
        end
        g
    end
    
    %  sol = traductor(x1);


    % figure,
    %     contourf(sol),grid on
    %     title('Grafico de placa');
        
end