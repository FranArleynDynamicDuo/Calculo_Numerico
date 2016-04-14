% Luis Vieira
% 07-41651
% Funcion que calcula la mayor cota del Radio espectral
function c = radioEspectral(D)
% Datos:
%       - A es una matriz de que contiene lso autovalores de una matriz
% Resultados:
%       - c contiene la cota para el radio espectral

[n m] = size(D);

c = ones(1,m);
c(1,:) = D(1,:);
for i = 2:n
	if(sum(abs(c(1,:))) < sum(abs(D(i,:))))
		c(1,:) = D(i,:);
	end
end