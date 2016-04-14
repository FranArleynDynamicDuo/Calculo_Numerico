% Calcula los coeficientes del polinomio dados los valores del enunciado
%@param tiempo: vector tiempo
%@param distancia: vector distancia
%@param velocidad: vector velocidad
%@return salida: vector con los coeficientes del polinomio
function salida = pol_hermite ( tiempo, distancia, velocidad )

%Inicializacion de las variables
n = length ( tiempo );
z = zeros ( 1, 2*n );
f = zeros ( 1, 2*n );

z(1:2:2*n-1) = tiempo;
z(2:2:2*n)   = tiempo;
f(1)         = distancia(1);
%%% ./ dividision del arreglo del lado derecho
f(3:2:2*n-1) = ( distancia(2:n) - distancia(1:n-1) ) ./ ( tiempo(2:n) - tiempo(1:n-1) ); % Primeras diferencias divididas
f(2:2:2*n)   = velocidad;

%Diagonal mediante diferencias divididas
for i = 3:2*n
    f(i:2*n) = ( f(i:2*n) - f(i-1:2*n-1) ) ./ ( z(i:2*n) - z(1:2*n-i+1) );
end;

salida = zeros ( 1, 2*n );
p = [1]; 
for i = 1:2*n
    salida = salida + f(i) * [ zeros(1,2*n-i) p ];
	p = conv (p,[ 1 -z(i)]) ; % multiplicacion de polinomios
end;
