% Luis Vieira
% 07-41651
% Funcion que construye las aproximacion a los 
% autovalores de una matriz tridiagonal y simetrica 
% mediante el metodo QR con traslaciones sucesivas
function [D] = QR(A, epsilon)
% Datos:
% 	- A es una matriz simetrica y tridiagonal de orden nxn
%   - epsilon es la tolerancia
% Resultado:
% 	- D es un vector de orden nx1 que contiene los autolavores

[n,n] = size(A);
m =n;
D = zeros(n,1);
B = A;

while ( m>1)
	while(abs(B(m,m-1)) >= epsilon)
		%Factorizacion B = QR
		[Q,R] = qr(B);
		%Siguiente matriz B
		B = R*Q;
       
	end
	% Colocamos el m-esimo autovalor en la posicion A(m,m)
A(1:m,1:m)= B;
% Repeticion del proceso en la submatriz m-1 x m-1 de A
m = m-1;
B = A(1:m,1:m);

end
D = diag(A);
