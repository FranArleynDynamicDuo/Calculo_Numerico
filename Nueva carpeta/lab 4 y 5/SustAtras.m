% Andreina Wilhelm 07-41672
% Edward Zambrano 07-41677
% Laboratorio 04

% Sustitucion hacia atras
% Parametros:
% 	U matriz triangular inferior
%	y vector del lado derecho
% Retonar:
%	x vector solucion

function [x] = SustAtras(U,y)
    [n,n] = size(U);
    x = zeros(n,1);
    for i=0:n-1
        k = n-i;
        temp = 0;
        for j=k+1:n
            temp = temp + U(k,j)*x(j);
        end	
        x(k) = (y(k) - temp)/U(k,k);
    end	
end

