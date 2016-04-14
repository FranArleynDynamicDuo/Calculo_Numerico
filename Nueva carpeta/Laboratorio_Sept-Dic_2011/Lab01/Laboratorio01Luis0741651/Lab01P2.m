% Luis Vieira
% 07-41651
% Laboratorio 01
% Script para la pregunta 2
clear all
clear clc
format long

x = rand(1000,1) .* 10^(-5);

a = 10^12;
b = 0;

for k = 1:1000
    a = a + x(k,1);
    b = b + x(k,1);
end 

b = b + 10^12;

c = norm(a,2) - norm(b,2);

display('La diferencia entre los numeros a y b es: ')
display(c)

format
