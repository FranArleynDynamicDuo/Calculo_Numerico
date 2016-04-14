% Andreina Wilhelm 07-41672
% Edward Zambrano 07-41677
% Laboratorio 04

tolerancia=10^-5;

%   Se van a usar dos matrices para almacenar los tiempos, tiemposz son los
% tiempos registrados utilizando como x0 un vector de ceros y tiemposo
% contiene los tiempos registrados utilizando como x0 un vector de 1.
%   La primera fila es para GaussSeidel,la segunda fila para Jacobi y la
% tercera para factorizacion LU cada una de las 3 columnas contiene el 
% tiempo que tomo cada sistema. Ej:
%   tiempos[i,2] = tiempo que tomo resolver el sistema i con el metodo de
% Jacobi

tiemposz=zeros(3,3);
tiemposo=zeros(3,3);

%   El numero de iteraciones se guarda en dos matrices: iteracionesz(con x0 
% lleno de ceros) e iteracioneso (con x0 lleno de 1) de la siguiente forma:
%   fila 1: nro iteraciones GaussSeidel
%   fila 2: nro iteraciones Jacobi
%   Columna i: nro iteraciones para el sistema i, con i=1,2,3

iteracionesz=zeros(2,3);
iteracioneso=zeros(2,3);

X01= zeros(length(A),1);
X02 = ones(length(A),1);
maxiter = 2000;

%Primero los tiempos con x01

for j=1:3,
    tiempo=cputime;
    [X,iteracionesz(1,j),S] = MiGaussSeidel(A,B(1:length(A),j),X01,tolerancia,maxiter);
    tiemposz(1,j) = cputime - tiempo;
    tiempo=cputime;
    [X,iteracionesz(2,j),S] = MiJacobi(A,B(1:length(A),j),X01,tolerancia,maxiter);
    tiemposz(2,j) = cputime - tiempo;
    tiempo=cputime;
    X = FactLU(A,B);
    tiemposz(3,j) =  cputime - tiempo;
end

%Ahora los tiempos con X02

for j=1:3,
    tiempo=cputime;
    [X,iteracioneso(1,j),S] = MiGaussSeidel(A,B(1:length(A),j),X02,tolerancia,maxiter);
    tiemposo(1,j) = cputime - tiempo;
    tiempo=cputime;
    [X,iteracioneso(2,j),S] = MiJacobi(A,B(1:length(A),j),X02,tolerancia,maxiter);
    tiemposo(2,j) = cputime - tiempo;
    tiempo=cputime;
    X = FactLU(A,B);
    tiemposo(3,j) =  cputime - tiempo;
end



