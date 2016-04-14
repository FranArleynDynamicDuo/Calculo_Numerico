% Procedimiento para crear el vector b

function [y] = Vector_y(x)

    f = @(x) (x*sin(x))/((x^2) + 1);
    n = length(x);
    y = zeros(1,n);
    
    for i = 1: n
        
        y(1,i) = f(x(1,i));
    end
end