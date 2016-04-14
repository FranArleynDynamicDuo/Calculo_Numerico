
% Luis Vieira
% 07-41651
% Funcion para calcular la interpolacion DE NEWTON con diferencias dividas
% a partir de una matriz dada ya preconstruida
function [d] = interp_newton2(x, y,m)


    % Inicializacion
    n = length(x);
    c = zeros(n);
    for i=1:length(m)
        for j=1:length(m)
        c(i,j) = m(i,j);
        end       
    end
    
    for i=length(m)+1:n
        c(i,1) = y(i);
    end

      for i = length(m)+1: n      %(i-1) -> se estan calculando f[x(i-1),...]
                  
          for j = 2: i  %(j-1) -> grado de la diferencia dividida
              
		    c(i,j) = (c(i,j-1) - c(i-1,j-1))/(x(i)-x(i-j+1));
          end
      end
    
      d = diag(c);