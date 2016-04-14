function [ p ] = ProductoInterno( x,y )

p = 0;

n = length(x);

if (length(x) ~= length(y))
    disp('vectores no compatibles');
    return
end

for i = 1 : n
    
    p = p + x(i)*conj(y(i));

end

