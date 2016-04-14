% Luis Vieira
% 07-41651
% Laboratorio 03
% Script para la pregunta 02
clear all
clc
format long

A =[
    90 1 2 3 4;
    1 90 2 3 4;
    1 2 90 3 4; 
    1 2 3 90 4;
    1 2 3 4 90
   ];

b =[
    1;
    2;
    3;
    4;
    5
   ];

c = [ 1 2 3 4 5 ];

d =[
    11;
    -3;
     8;
     7;
     9
   ];

% Pregunta a
display('Pregunta a')

[a, L,U] = LU(A,ones(1,5));
clear a
%display('La matriz L es:')
%display(L)
%display('La matriz U es:')
%display(U)

% Pregunta b
display('Pregunta b')

display('La solucion con b es:')
x1 = LUR(L,U,b)

display('La solucion con c es:')
x2 = LUR(L,U,c)

display('La solucion con d es:')
x3 = LUR(L,U,d)



