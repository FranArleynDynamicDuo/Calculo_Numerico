% Procedimiento para crear el vector b

function [b] = Vectorbdf(x)

    f = @(x) ((x*((x^2) + 1)*cos(x)) - (((x^2) + 1)*sin(x)))/(((x^2) + 1)^2);
    n = length(x);
    b = zeros(1,n);
    
    for i = 1: n
        
        b(1,i) = f(x(1,i));
    end
end