% Luis Vieira
% 07-41651
% Laboratori 05
% Script para la pregunta 01

clear all
clc
format long

A=[
    1 0  1 ;
   -1 1  0 ;
    1 2 -3
   ];
b=[
    2;
    0;
    0
   ];

for i=1:length(A)
    sumf = 0;
    sumc = 0;
    for j=1:length(A)
        sumf=sumf+abs(A(i,j));
        sumc=sumc+abs(A(j,i));
    end
    sumf = sumf - abs(A(i,i));
    sumc = sumc - abs(A(i,i));
    if(abs(A(i,i)) < sumf  )
        
    display('La matriz A no es diagonal dominante por filas')
    end
    if(abs(A(i,i)) < sumc  )
    display('La matriz A no es diagonal dominante por columna')
    end
end
display('')

x0=[
    8;
    9;
    3
   ];
tol=1e-16;
maximoi = 680;

x1 = jacobi(A,b,x0,tol,maximoi);
display('Por el metodo de Jacobi: ')
display(x1)
display(norm(x1-[1;1;1]))
x2 = gseid(A,b,x0,tol,maximoi);
display('Por el metodo de Gauss-Seid')
display(x2)

display(norm(x2-[1;1;1]))