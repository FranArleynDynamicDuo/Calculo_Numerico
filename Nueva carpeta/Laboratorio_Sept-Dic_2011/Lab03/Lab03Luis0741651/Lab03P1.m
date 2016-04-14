% Luis Vieira
% 07-41651
% Laboratorio 03
% Script para la pregunta 01
clear all
clc
format long

A = [1     2     1    ;
     2  4.0001 2.002  ;
     1  2.002  2.004 ];

b =[  4    ;
    8.0021 ; 
    5.006 ];

% Pregunta a
display('Pregunta a: ')

display('La solucion con LU es: ')
xLU  = LU(A,b)

display('La solucion con el comando es: ')
xCmd = A\b

% Pregunta b
display('Pregunta b: ')

x = [1 ;
     1 ;
     1];

 display('El error relativo con la solucion con LU es: ')
 errorRLU = norm(xLU - x) / norm(x)
 
 display('El error relativo con la solucion con el comando es: ')
 errorRCmd = norm(xCmd - x) / norm(x)
 
 % Pregunta C
 display('Pregunta c:')
 
 bN = [   4   ; 
       8.0020 ;
       5.0061 ];

 display('La nueva solucion es: ')
 xNLU  = LU(A,bN)
 
 display('La variacion relativa de b es: ')
 errorRb = norm(bN - b) / norm(b)
 
 % Pregunta d
 display('Pregunta d:')
 
 display('El error relativo con la nueva solucion es: ')
 errorRNLU = norm(xNLU - x) / norm(x)