% Luis Vieira
% 07-41651
% Funcion que construye las aproximacion a los 
% autovalores de una matriz tridiagonal y simetrica 
% mediante el metodo QR con traslaciones sucesivas
function [D] = QR2(A, epsilon,maxi)
% Datos:
% 	- A es una matriz simetrica y tridiagonal de orden nxn
%   - epsilon es la tolerancia
% Resultado:
% 	- D es un vector de orden nx1 que contiene los autolavores

[n,n] = size(A);
m =n;
D = zeros(n,1);
B = A;
k = 0;
while (k<maxi)
	
		%Factorizacion B = QR
		[Q,R] = qr(B);
		%Siguiente matriz B
		B = R*Q;
    k = k+1;
end
D = diag(B);
