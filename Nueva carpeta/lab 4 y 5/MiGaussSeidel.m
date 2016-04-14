% Andreina Wilhelm 07-41672
% Edward Zambrano 07-41677
% Laboratorio 04

% Metodo de Jacobi para la resolucion de un sistema de ecuaciones
% Parametros:
% 	A Matriz del sistema
%	b vector del lado derecho
%   x0 vector inicial
%   tol tolerancia
%   maxiter numero maximo de iteraciones

% Retonar:
%	X vector solucion
%   ite numero de iteraciones
%   error error relativo estimado con respecto a la norma infinito

function [X, ite,error] = MiGaussSeidel(A,b,x0,tol,maxiter)

%Declaracion de variables
real = A\b;
error = norm(real-x0,inf)/norm(real,inf);
ite = 1;

%matrices utilizadas para la iteracion
D = diag(diag(A));
L = -tril(A,-1);
U = -triu(A,1);
P = (D-L)\U;
S = (D -L)\b;

%Inicio del ciclo
while (error > tol && ite < maxiter)
    X = (P*x0) + S;
    error = norm(X - x0,inf)/ norm(X,inf);
    ite = ite + 1;
     x0 = X;
end
end
