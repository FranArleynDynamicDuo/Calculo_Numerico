% Luis Vieira
% 07-41651
% Laboratori 07
% Script para la pregunta 02

clear all
clc
format long

A =[17 24 1 8 15;23 5 7 14 16;4 6 13 20 22;10 12 19 21 3;11 18 25 2 9];
X = rand(length(A),1);
epsilon = 1e-15;
max1 = 300;

display('El mayor de los autovalores es: ')
[lambda,V] = power1(A,X,epsilon,max1);
display(lambda)

display('La aproximacion del del resultado anterior es:')
display(norm(A*V - lambda*V ,inf))

display('El menor de los autovalores es: ')
[lambda,V] = powerInverso(A,X,epsilon,max1);
display(lambda)

display('La aproximacion del del resultado anterior es:')
display( norm(A*V - lambda*V ,inf))

display('El autovalor mas cercano a 19 es: ')
alfa = 19;
[lambda,V] = mpotenciasInvDes(A,alfa,X,epsilon,max1);
display(lambda)

display('La aproximacion del del resultado anterior es:')
display( norm(A*V - lambda*V ,inf))

display('El autovalor mas lejano a 30 es: ')
alfa = 30;
[lambda,V] = mpotenciasDes(A,alfa,X,epsilon,max1);
display(lambda)

display('La aproximacion del del resultado anterior es:')
display( norm(A*V - lambda*V ,inf))

