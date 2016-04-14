% Luis Vieira
% 07-41651
% Funcion que calcula el autovalor dominante y su autovector asociado de
% mediante el metodo de las potencias inverso
function [lambda,V] = powerInverso(A,X,epsilon,max1)
% Datos:
%       - A es una matriz de orden NxN 
% Resultados:
%       - lambda es el autovalor menor
%       - V es ekl autovector menor


% Inicializacion de los parametros
lambda = 0;
cnt = 0;
err =1;
state =1;
[L, U, P] = lu(A);

while((cnt <= max1) & (state ==1))
    
    Y = L\(P*X);
    Y = U \ Y;
    %Normalizacion de Y
    [m j] = max(abs(Y));
    c1 = m;
    dc = abs (lambda - c1);
    Y = ( 1/c1)*Y;
    
    % Actualizacion de X y de lambda y criterio de convergencia
    dv = norm( X-Y);
    err = max(dc,dv);
    X = Y;
    lambda = c1;
    state = 0;
    if( err > epsilon)
        state = 1;
    end
    cnt = cnt+1;
end
lambda = 1/lambda;
V = X;