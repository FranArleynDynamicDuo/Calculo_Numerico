%Devuelve la varianza utilizando la formula 2 del enunciado
%@param V: vector con los datos a obtener la varianza
%@return var: varianza obtenida
function [ var ] = varianza2( V )
n = length(V);

e1 = 0;
for i=1:1:n
    e1 = e1 + V(i)^2;
end

suma = e1 - (1/n)*(sum(V)^2); 
 
var = (1/(n-1))*suma;
end

