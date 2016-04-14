% Andreina Wilhelm 07-41672
% Edward Zambrano 07-41677
% Laboratorio 04

% Factorizacion LU
% Parametros:
% 	A matriz del sistema
%   b vector del lado derecho
% Retonar:
%	X Solucion del sistema

function [X] = FactLU(A,b)
[n,n] = size(A);
L = zeros(n,n);
U = zeros(n,n);
for k=1:n
	L(k,k) =1;
	temp=0;
	for s=1:k-1
		temp = temp + L(k,s)*U(s,k);
    end
	U(k,k) = A(k,k) - temp;
	for j=k+1:n
		temp=0;
		for s=1:k-1
			temp = temp + L(k,s)*U(s,j);
		end
		U(k,j) = (A(k,j) - temp)/L(k,k);
	end
	for i=k+1:n
		temp=0;
		for s=1:k-1
			temp = temp + L(i,s)*U(s,k);
		end
		L(i,k) = (A(i,k) - temp)/U(k,k);
    end
    
end
y = SustAdelante(L,b);
X = SustAtras(U,y);
end
