% Luis Vieira
% 07-41651
% Laboratorio 02
% Script para la pregunta 01
clear all
clc
format long

n = 25;
A = Vandermonde(n);

% Pregunta a
display('Pregunta a')

display('El numero de condicion de la matriz A es: ')
cond(A)

display('El determinante de la matriz A es: ')
det(A)

% Pregunta b (Acomodar esta pregunta)
display('Pregunta b')

b = zeros(n,1);
for i=1:n
    b(i) = (((1 + i)^n) -1 )/i;
end
display('La solucion exacta del sistema es: ')
inv(A) * b

% Pregunta c
display('Pregunta c')

display('La norma de comparar con la identida es :')
norm(A*inv(A) - eye(n),inf)
 
% Pregunta d
display('Pregunta d')

display('La inversa de la inversa de A es: ')
inv(inv(A))

display('La norma inf , de (A^-1)^-1 - A es: ')
norm(inv(inv(A))-A,inf)

% Pregunta e
display('Pregunta e')

display('El det A por el det de su inversa es: ')
det(A)*det(inv(A))

% Pregunta f
display('Pregunta f')

display('El numero de condicion con norma infinito es: ')
cond(A,inf)

% Pregunta g
display('Pregunta g')

display('La solucion usando Gauss sin pivoteo es: ')
d = gauss(A,b)


% Pregunta h
display('Pregunta h')

display('La solucion usando A\b es :')
x = A\b

% Pregunta i
display('Pregunta i')

display(' La primera norma es: ')
norm( b - A*(ones(25,1)) , inf)

display('La segunda norma es: ')
norm( x - (ones(25,1)) , inf)