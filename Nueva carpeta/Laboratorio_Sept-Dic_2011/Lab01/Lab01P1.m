% Luis Vieira
% 07-41651
% Laboratorio 01
% Script para la pregunta 1
clear all
clear clc
format long

% Parte a
x = -3:0.01:3;
for i = 1:length(x)
y(1,i) = (1 - cos(x(1,i))) / x(1,i)^2;
end

plot(x,y,'g-')
hold on

% Parte b
x2 = 1.2*10^(-8);
y2 = (1 - cos(x2)) / x2^2;

display('La funcion con cos evaluada es: ')
display(y2)
plot(x2,y2,'b*')

% Parte c
x3 = 1.2*10^(-8);
y3 = (1/2) * (sin(x3/2)/(x3/2))^2;
display('La funcion con sin evaluada es: ')
display(y3)
plot(x3,y3,'r*')

c = norm(y2,2) - norm(y3,2);

display('La diferencia entre las funciones es: ')
display(c)

hold off




