% Procedimiento para crear el vector b

function [b] = Vectorb(x)

    f = @(x) (x*sin(x))/((x^2) + 1);
    n = length(x);
    b = zeros(1,n);
    
    for i = 1: n
        
        b(1,i) = f(x(1,i));
    end
end