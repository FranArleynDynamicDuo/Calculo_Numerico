%Devuelve la varianza utilizando la formula 2 del enunciado
%@param V: vector con los datos a obtener la varianza
%@return var: varianza obtenida
function [ salida ] = funcionQrecursiva(x,k)
if (k == 1)
    salida = 0;
else
    salida = funcionQrecursiva(x,k-1) + ((k-1)/k)*((x(k) - funcionMrecursiva(x,k-1))^2);
end


