% Luis Vieira
% 07-41651
% Laboratorio 02
% Script para la pregunta 02

clear all
clc
format long

i = 1;
b = [4; -1];

for k=5.01:0.01:15
    A = [10^(-k) , 2 ; 1 , -1];
    xE = A \ b;
    xG = gauss(A,b);
    Y(i) = norm( xG -xE ,2);
    i = i+1;
end


X = 5.01:0.01:15;
semilogy(X,Y,'r-')

