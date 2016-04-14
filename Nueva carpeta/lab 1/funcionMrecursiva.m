%Devuelve la varianza utilizando la formula 2 del enunciado
%@param V: vector con los datos a obtener la varianza
%@return var: varianza obtenida
function [ salida ] = funcionMrecursiva(x,k)

if (k == 1)
    salida = x(1);
else
    salida = (x(k) - funcionMrecursiva(x,k-1))/k;
end
end

