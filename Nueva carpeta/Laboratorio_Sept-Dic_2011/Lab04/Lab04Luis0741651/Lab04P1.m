% Luis Vieira
% 07-41651
% Laboratorio 04
% Script para la pregunta 01
clear all
clc
format long

A1= [
    5 10 6 2;
    8 4 5 1;
    10 10 6 7;
    8 7 7 8
    ];
b1 =[
    2;
    0;
    8;
    8
    ]; 

A2 =[
    6 2 1 -1;
    2 4 1 0;
    1 1 4 -1;
    -1 0 -1 3    
    ];
b2=[
   0.0;
   7.0;
   -1.0;
   -2.0
   ];

V1 = eig(A1);
n1 = size(V1);
n1 = n1(1);
V2 = eig(A2);
n2 = size(V2);
n2 = n2(1);
k = 0;
for i =1:n1
    if V1(i) < 0
    
       display('El autovalor de la matriz A1 es negativo: ')
       display(V1(i))
       display('No se le puede aplicar el metodo de cholesky a A1')
       k = 1;
       break;
    end
end
if k == 1
    display('Se procedera a aplicar LU a A1: ')
    [x1,L1,U1] = LU(A1,b1);
    display('La matriz L de A1 es:')
    display(L1)
       display('La matriz U de A1 es:')
    display(U1)
       display(' La solucion del sistema de la matriz A1 es:')
    display(x1)
else
    display('La matriz A1 es definida positiva.')
    display('Se procedera a aplicar Cholesky a A1: ')
    L1 = cholesky(A1);
    display('La matriz L de la matriz A1')
    display(L1)
    display(' La solucion del sistema de la matriz A1 es:')
    x1 = LUR(L1,L1',b1);
    display(x1)
end

k = 0;
for i =1:n2
    if V2(i) < 0
    
       display('El autovalor de la matriz A2 es negativo: ')
       display(V2(i))
       display('No se le puede aplicar el metodo de cholesky a A2')
       k = 1;
       break;
    end
end
if k == 1
    display('Se procedera a aplicar LU a A2: ')
    [x2,L2,U2] = LU(A2,b2);
    display('La matriz L de A2 es:')
    display(L2)
       display('La matriz U de A2 es:')
    display(U2)
       display(' La solucion del sistema de la matriz A2 es:')
    display(x2)
else
    display('La matriz A2 es definida positiva.')
    display('Se procedera a aplicar Cholesky a A2: ')
    L2 = cholesky(A2);
    display('La matriz L de la matriz A2')
    display(L2)
    display(' La solucion del sistema de la matriz A2 es:')
    x2 = LUR(L2,L2',b2);
    display(x2)
end