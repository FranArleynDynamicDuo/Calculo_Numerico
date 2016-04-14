function [ x ] = elimgauss( A , b , tol)
% Documentacion de la funcion
% Variables de entrada :
% A
% b
% tol: Tolerancia para la verificacion de elemento nulo
% Variables de salida ;
% x
%
% Carlos Contreras
% ccontreras@usb.ve
% Verficaciones iniciales
[ m , n ] = size( A ) ;
if m ~= n
error('Matriz no es cuadrada')
end
[ m , l ] = size( b ) ;
if ( m ~= n || l ~= 1 )
error('Sistema no consistente')
end
x = zeros( n , 1 ) ;
A = [ A , b ] ; % Matriz aumentada
% Eliminacion gaussiana
for i = 1 : n - 1
if abs( A( i , i ) ) < tol
error( ['Pivote nulo en fila ',num2str(i) ] )
end
% Eliminacion en las filas debajo de la diagonal i
for j = i + 1 : n
mult = A( j , i ) / A( i , i ) ;
A( j , i ) = 0 ;
A( j , i + 1 : n + 1 ) = A( j , i + 1 : n + 1 ) ...
- mult * A( i , i + 1 : n + 1 ) ;
end
end
if abs( A( n , n ) ) < tol
error('Pivote nulo')
end
% Vector de lado derecho luego de la eliminacion gaussiana
b = A( : , n + 1 ) ;
% Sustitucion regresiva
x( n , 1 ) = b( n ) / A( n , n ) ;
for i = n - 1 : - 1 : 1
x( i , 1 ) = ( b( i ) - ...
A( i , i + 1 : n ) * x( i + 1 : n , 1 ) ) / A( i , i ) ;
end
end