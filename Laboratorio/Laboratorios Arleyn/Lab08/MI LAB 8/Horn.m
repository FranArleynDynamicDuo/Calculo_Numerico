% Evaluacion d eun Polinomio con Horner2

function [sal] = Horn(p,puntos)

    sal = p(length(p));
    
    for k = length(p) : 0
        sal = p(k) + sal.*puntos;
    end
end