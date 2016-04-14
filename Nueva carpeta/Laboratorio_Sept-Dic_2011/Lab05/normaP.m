% Luis Vieira
% 07-41651
% Funcion que calcula la norma p de una matriz de iteracion
function [n] = normaP(A,p)
%Parametros:
% A - matriz cuadrada
% p - Tipo de norma a sacar
% Salida:
% n - Norma p de la matriz A

matrizi= inv(diag(diag(A))) * (triu(A)-diag(diag(A)) + tril(A) -diag(diag(A)) );
n = norm(matrizi,p);