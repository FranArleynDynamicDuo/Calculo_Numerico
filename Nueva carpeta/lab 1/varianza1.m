%Devuelve la varianza utilizando la formula 1 del enunciado
%@param V: vector con los datos a obtener la varianza
%@return var: varianza obtenida
function [ var ] = varianza1( V )
n = length(V);
xbarra = (sum(V))/n;
suma = 0;
for i=1:1:n
    suma = suma + (V(i)-xbarra)^2;
end

var = (1/(n-1))*suma;
end

