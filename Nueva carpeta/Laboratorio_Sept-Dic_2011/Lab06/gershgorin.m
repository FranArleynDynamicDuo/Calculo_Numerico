% Luis Vieira
% 07-41651
% Funcion que calcula las cotas de los autovalores de la matriz A, a traves
% del Teorema de los circulos de Gershgorin
function [G,e,c] = gershgorin(A,numG)
% Datos:
%       - A es una matriz de orden NxN
% Resultados:
%       - G contiene todos los circulos del plano complejo de centro ajj y
%       radio r
%       - e son autovalores de A, calculados con eig
%       - c contiene el vector con las cotas de los autovalores

if diff(size(A)), error('Matriz A no es cuadrada'), end

n = length(A);
m= 80; %Numero de punto del circulo
G = zeros(m,n);
c = zeros(n,2);
d = diag(A);
r = sum(abs( A - diag(d) )')';
e = eig(A);

radvec = exp( 1i * linspace( 0, 2*pi,m)' );

for j = 1 :n
    G(:,j) = d(j) * ones(m,1) + r(j)*radvec;
    c(j,1) = d(j) - r(j);
    c(j,2) = d(j) + r(j);
end

color = [1.0 ; 0.5 ; 0; 1 ; 1 ; 0] ;
figure(numG)
    for j = 1:n
        % Plot Discos
         
        plot(real(G(:,j)), imag(G(:,j)),'-','Color', [ color(1) color(2) color(3)]);
        
        
        if color(4) == 1
        color(1) = color(1) - 0.2;
        if color(1) == 0
            color(4) = 0;
        end
       elseif color(4) == 0
        color(1) = color(1) + 0.1;
        if color(1) == 1.0
            color(4) = 1;
        end
        end
        if color(5) == 1
        color(2) = color(2) - 0.1;
        if color(2) == 0
            color(5) = 0;
        end
       elseif color(5) == 0
        color(2) = color(2) + 0.1;
        if color(2) == 1.0
            color(5) = 1;
        end
        end
        if color(6) == 1
        color(3) = color(3) - 0.2;
        if color(3) == 0
            color(6) = 0;
        end
       elseif color(6) == 0
        color(3) = color(3) + 0.1;
        if color(3) == 1.0
            color(6) = 1;
        end
       end
       

        hold on;
        
    end
    % Plot autovalores propios
    plot(real(e), imag(e), 'x');
    title ('Teorema de los circulos de Gerschgorin')
    xlabel('Valor real')
    ylabel('Valor imaginario')


    axis('square');
    hold off;

        
     

