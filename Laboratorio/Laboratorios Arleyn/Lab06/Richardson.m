% Metodo de Richardson

function [x] = Richardson(A,b,tol,maxi,x);

n = length(A);
X = x;
    
    for k = 1:maxi
        H = A*x;
        
        if abs(H-b)<tol
            break
        end
        
        for i = 1:n
            sum = 0;
            for j = 1:n
                sum = sum + A(i,j)*x(j);
            end
            
        r(i) = b(i) - sum;
        
        end
        
        for i = 1:n
            x(i) = x(i) + r(i);
        end
        
        if abs(X-x) < tol
            break
            
        end
        
        X=x;
    end
end