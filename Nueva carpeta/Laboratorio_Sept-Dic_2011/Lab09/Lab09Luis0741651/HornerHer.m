% Luis Vieira
% 07-41651
% Funcion Para determinar la anidacion DE HORNER con Hermite
function [salida] = HornerHer(coef,puntos,data)
  tam = length(coef);
  for j=1:length(puntos)
      aux = 0;
      for i = 1 :1 : tam
            aux = aux*(puntos(j)-data(tam-i+1)) + coef(i);
      end
      salida(j) = aux;
  end
end