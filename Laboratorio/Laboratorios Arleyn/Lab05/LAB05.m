% Nombre: Arleyn Goncalves
% Carnet: 10-10290
% LABORATORIO 5

% PREGUNTA 1

    % GauussSeide
    tol= 0.00000001;
    maxi = 1000;
    n = size(A);
    x0=zeros(n,1);

    % GauussSeide
    %x1 = GaussSeide(A,B,tol,maxi,x0)
    
    % Jacobi
    %x2 = Jacobi(A,B,tol,maxi,x0)
    
% PREGUNTA 2

    % Factorizacion LU
    
        %[L,U] =lu_lab3(A);
        %[d] = sustitucionp(L,B);
        %[x] = sustitucionr(U,d);
        %Resultado = x
        
% Pregunta 3

    % PRIMERA PARTE
        tol= 1*10^(-5);
        maxi = 1000;
        n = size(A);
        x0=zeros(n,1);
    
    % GaussSeide
        time = cputime;
        x1 = GaussSeide(A,B,tol,maxi,x0);
        time1x0 = cputime - time
        
    % Jacobi
        time = cputime;
        x2 = Jacobi(A,B,tol,maxi,x0);
        time2x0 = cputime - time
        
    % Factorizacion LU
        time = cputime;
        [L,U] =lu_lab3(A);
        [d] = sustitucionp(L,B);
        [x] = sustitucionr(U,d);
        Resultado = x;
        time3x0 = cputime - time
        
   % SEGUNDA PARTE
        tol= 1*10^(-5);
        maxi = 1000;
        n = size(A);
        x0=ones(n,1);
        
   % GaussSeide
        time = cputime;
        x1 = GaussSeide(A,B,tol,maxi,x0);
        time1x1 = cputime - time
        
   % Jacobi
        time = cputime;
        x2 = Jacobi(A,B,tol,maxi,x0);
        time2x1 = cputime - time
        
   % Factorizacion LU
        time = cputime;
        [L,U] =lu_lab3(A);
        [d] = sustitucionp(L,B);
        [x] = sustitucionr(U,d);
        Resultado = x;
        time3x1 = cputime - time