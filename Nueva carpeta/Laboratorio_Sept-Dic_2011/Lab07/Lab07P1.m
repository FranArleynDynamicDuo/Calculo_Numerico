% Luis Vieira
% 07-41651
% Laboratori 07
% Script para la pregunta 01

clear all
clc
format long

A =[1 45 8 -2;
    7 2 1 0;
    -2 3 12 1;
    6 1 -2 3];

B =[1 5 25 125 625;
    5 1 5 25 125;
    25 5 1 5 25;
    125 25 5 1 5;
    625 125 25 5 1];

display('Matriz A')
display('Los autovalores de A calculados con QR: ')
autoVA = QR(A,1e-15);
display(autoVA)

display('Calcular |QR - eig| para saber cuanto es la aproximacion: ')
display( norm(norm(autoVA,inf) - norm(eig(A),inf),inf))

display('Matriz B')
display('Los autovalores de B calculados con QR: ')
autoVB = QR(B,1e-5);
display(autoVB)

display('Calcular |QR - eig| para saber cuanto es la aproximacion: ')
display( norm(norm(autoVB,inf) - norm(eig(B),inf),inf))

