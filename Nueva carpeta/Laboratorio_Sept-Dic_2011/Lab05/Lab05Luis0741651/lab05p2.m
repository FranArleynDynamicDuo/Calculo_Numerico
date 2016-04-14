% Luis Vieira
% 07-41651
% Laboratori 05
% Script para la pregunta 02

clear all
clc
format long

A =[
    4 3 2;
    0 5 -2;
    -1 -2 7
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

n1 = normaP(A,1);
display('La norma 1 de la matriz de iteraciones :')
display(n1)
n2 = normaP(A,2);
display('La norma 2 de la matriz de iteraciones :')
display(n2)
ni = normaP(A,inf);
display('La norma inf de la matriz de iteraciones :')
display(ni)
