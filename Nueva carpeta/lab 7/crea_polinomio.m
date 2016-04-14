%Crea un polinomio normalizado mediante el metodo de minimos cuadrados
%@param x: vector de las abscisas
%@param y: vector de las cordenadas
%@return p:polinomio creado
function [p]=crea_polinomio(x,y,g)
    min = minimos_cuadrados(x,y,g);
    p = zeros(length(min),1);
    %se invierten los coeficientes que devuelve minimos_cuadrados
    for i=1:1:length(min)
        p(i) = min(length(min)-i+1);
    end