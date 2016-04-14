% Luis Vieira
% 07-41651
% Laboratori 06
% Script para la pregunta 01

clear all
clc
format long


A = [
3 -1 -9 -6;
-2 9 -6 -0;
-9 -1 0 10;
-6 7 -3 -6];

B =[
8 -3 -2 -3;
-6 -7 -1 2;
1 -7 4 -8;
9 -5 1 -8];

C = A' * A;

% Pregunta a,b,c y d
display('Matriz A')
[GA,eA,cA] = gershgorin(A,1);
display('La cota de los autovalores de la matriz A: ')
display(cA)
display('La cota del Radio Espectral de la matriz A es: ')
reA = radioEspectral(cA);
display(reA)
display('Los autovalores hallados con el comando eig, de A: ')
display(eA)
display('El radio espectral de eig es, de A: ')
display(max(abs(eA)))

display('Matriz B')
[GB,eB,cB] = gershgorin(B,2);
display('La cota de los autovalores de la matriz B: ')
display(cB)
display('La cota del Radio Espectral de la matriz B es: ')
reB = radioEspectral(cB);
display(reB)
display('Los autovalores hallados con el comando eig, de B: ')
display(eB)
display('El radio espectral de eig es, de B: ')
display(max(abs(eB)))

display('Matriz C')
[GC,eC,cC] = gershgorin(C,3);
display('La cota de los autovalores de la matriz C: ')
display(cC)
display('La cota del Radio Espectral de la matriz C es: ')
reC = radioEspectral(cC);
display(reC)
display('Los autovalores hallados con el comando eig, de C: ')
display(eC)
display('El radio espectral de eig es, de C: ')
display(max(abs(eC)))

% Pregunta e y f
display('')
display(' Pregunta e y f')

X = rand(length(A),1);
epsilon = 1e-15;
max1 = 300;

display('Matriz A')
display('El autovalor dominante de la matriz A es: ')
[lambda,V] = power1(A,X,epsilon,max1);
display(lambda)


display('La aproximacion del del resultado anterior es:')
display(norm(A*V - lambda*V ,inf))

display('El menor autovalor de la matriz A es: ')
[lambda,V] = powerInverso(A,X,epsilon,max1);
display(lambda)


display('La aproximacion del del resultado anterior es:')
display(norm(A*V - lambda*V ,inf))

display('Matriz B')
display('El autovalor dominante de la matriz B es: ')
[lambda,V] = power1(B,X,epsilon,max1);
display(lambda)


display('La aproximacion del del resultado anterior es:')
display(norm(B*V - lambda*V ,inf))

display('El menor autovalor de la matriz B es: ')
[lambda,V] = powerInverso(B,X,epsilon,max1);
display(lambda)


display('La aproximacion del del resultado anterior es:')
display(norm(B*V - lambda*V ,inf))

display('Matriz C')
display('El autovalor dominante de la matriz C es: ')
[lambda,V] = power1(C,X,epsilon,max1);
display(lambda)


display('La aproximacion del del resultado anterior es:')
display(norm(C*V - lambda*V ,inf))

display('El menor autovalor de la matriz C es: ')
[lambda,V] = powerInverso(C,X,epsilon,max1);
display(lambda)


display('La aproximacion del del resultado anterior es:')
display(norm(C*V - lambda*V ,inf))