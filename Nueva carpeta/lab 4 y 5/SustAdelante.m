% Andreina Wilhelm 07-41672
% Edward Zambrano 07-41677
% Laboratorio 04

% Sustitucion hacia adelante
% Parametros:
% 	L matriz triangular inferior
%	b vector del lado derecho
% Retonar:
%	y vector solucion

function [y] = SustAdelante(L,b)
[n,n] = size(L);
y = zeros(n,1);
for i=1:n
	temp = 0;
	for j=1:i-1
		temp = temp + L(i,j)*y(j);
	end	
	y(i) = (b(i) - temp)/L(i,i);
end	
end

