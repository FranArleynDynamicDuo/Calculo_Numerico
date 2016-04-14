%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             Laboratorio 4                               %
%                            Calculo Numerico                             %
%                            Francisco Sucre                              %
%                               10-10717                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%% Laboratorio 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% 1. Programe en matlab los m ́etodos de Jacobi y Gauss-Seidel como 
% funciones que reciban los siguientes par ́ametros; matriz A, vector de 
% lado derecho B, tolerancia tol, iterado inicial x0 y maximo numero de
% iteraciones maxiter, mientras que el parametro de retorno sera la 
% solucion x del sistema de ecuaciones. Valide sus resultados con alguna
% matriz y vectores de prueba dados por Ud.

    clc;
    n = size(A,1);
    tol= 0.00000001;
    maxiter = 1000;
    x0 = zeros(n,1);
    
    % A = fix(5  * rand(n) .* sign(randn(n)));
    % b = fix(5  * rand(n,1) .* sign(randn(n,1)));

    %%%% GauussSeide%%%
    
    xGauuss = GaussSeidel(A,B,tol,maxiter,x0);
    
    %%% Jacobi%%%
      
    xJacobi = Jacobi(A,B,tol,maxiter,x0);
    
% 2. Programe la resolucion de un sistema de ecuaciones usando 
% factorizacion LU con sustitucion hacia delante y hacia atras. 
% Cada una de estas acciones en una funcion. Para lo anterior use la 
% factorizacion programada en el laboratorio pasado.

    %%%% Factorizacion LU %%%

        xLU = ResolverLU(A,B,true,1);
        
% 3. Construya un script o programa principal en el cual se resuelven los 3
% sistemas de ecuaciones, uno por cada columna de la matriz B, mediante
% los metodos LU, Jacobi y Gauss-Seidel, para una tolerancia de 1 × 10 −5
% y un iterado inicial x0 = (1, . . . , 1) y x0 = (0, . . . , 0). 
% Mida los tiempos y numero de iteraciones que toma cada m ́etodo 
% (e. g. use la funcion cputime de Matlab) y las iteraciones 
% (en el caso de Jacobi y Gauss)para cada m ́etodo y al resolver cada 
% sistema de ecuaciones.

    % PRIMERA PARTE
    
        tol= 1*10^(-5);
        maxiter = 1000;
        x0 = zeros(n,1);
    
    % GaussSeide
        time1 = cputime;
        xGauss1 = GaussSeidel(A,B,tol,maxiter,x0);
        timeGauss1 = cputime - time1
        
    % Jacobi
        time1 = cputime;
        xJacobi1 = Jacobi(A,B,tol,maxiter,x0);
        timeJacobi1 = cputime - time1
        
    % Factorizacion LU
        time1 = cputime;
        xLU1 = ResolverLU(A,B,true,1);;
        timeLU1 = cputime - time1
        
   % SEGUNDA PARTE
   
        tol= 1*10^(-5);
        maxi = 1000;
        n = size(A,1);
        x1 = ones(n,1);
        
   % GaussSeide
   
        time1 = cputime;
        xGauss2 = GaussSeidel(A,B,tol,maxi,x1);
        timeGauss2 = cputime - time1
        
   % Jacobi
        time1 = cputime;
        xJacobi2 = Jacobi(A,B,tol,maxi,x1);
        timeJacobi2 = cputime - time1
        
   % Factorizacion LU
        time1 = cputime;
        xLU2 = ResolverLU(A,B,true,1);
        timeLU2 = cputime - time1
  

%%%%%%%%%%%%%%%%%%%%%%%%% Laboratorio 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
