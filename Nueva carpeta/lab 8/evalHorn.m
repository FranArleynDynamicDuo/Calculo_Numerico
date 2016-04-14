%Evalua un polinomio en la forma de Horner
%@param coef: coeficientes del polinomio
%@param b: vector solucion
%@param data: data original, si es Horner es un vector de ceros.
%@return evaluacion del polinomio.
function [salida] = evalHorn(coef,puntos,data)
  tam = length(coef);
  for j=1:length(puntos)
      aux = 0;
      for i = 1 :1 : tam
            aux = aux*(puntos(j)-data(tam-i+1)) + coef(i);
      end
      salida(j) = aux;
  end
end


