function [A , l] = fact_lu( A , tol)
% Documentacion de la funcion
% Variables de entrada :
% A
% tol: Tolerancia para la verificacion de elemento nulo
% Variables de salida ;
% x
%
% Gustavo El Khoury
% gustavo@ldc.usb.ve
% Verficaciones iniciales
l=eye(size(A));
p2=eye(size(A));
[ m , n ] = size( A ) ;
if m ~= n
error('Matriz no es cuadrada')
end
% Eliminacion gaussiana
for i = 1 : n - 1
if abs( A( i , i ) ) < tol
error( ['Pivote nulo en fila ',num2str(i) ] )
end
% Eliminacion en las filas debajo de la diagonal i
for j = i + 1 : n
mult = A( j , i ) / A( i , i ) ;
p2(j,i)=-mult;
A( j , i ) = 0 ;
A( j , i + 1 : n  ) = A( j , i + 1 : n  ) ...
- mult * A( i , i + 1 : n  ) ;
end
l=(l*inv(p2));
p2=eye(size(A));
end
if abs( A( n , n ) ) < tol
error('Pivote nulo')
end

end