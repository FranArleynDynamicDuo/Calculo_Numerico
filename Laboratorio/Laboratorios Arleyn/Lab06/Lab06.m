% Nombre: Arleyn Goncalves
% Carnet: 10-10290
% Laboratorio 6

% Pregunta 1.

    M1 = [ 1, 0.1 , 0.2 ; 0.4 , 1 , -0.2 ; -0.3 , 0.01 , 1];
    b1 = [1 ; 1 ; 1];
    
    M2 = [-3 -2 0 -1; -4 -6 -4 -1; 2 -3 4 -3; 0 0 -3 3];
    b2 = [1 ; -1 ; 1 ; -1];
    
    M3 = [4 -1 0 -1 0 0; -1 4 -1 0 -1 0; 0 -1 4 0 0 -1; -1 0 0 4 -1 0; 0 -1 0 -1 4 -1; 0 0 -1 0 -1 4];
    b3 = [0 ; 5 ;  0 ; 6 ; -2 ; 0];
    
    % Pregunta 1.a Correr con richardson, Gauss Seide, Jacobi y Sort (w = 1.1)
    
        % Matriz 1
        
            tol= 0.000001;
            maxi = 500;
            [n,m] = size(M1);
            x0 = zeros(n,1);
            w = 1.1;
            
            % Richardson
                t0 = cputime;
                R1 = Richardson(M1,b1,tol,maxi,x0)
                tf = cputime - t0;
                
            % GaussSeide
                t0 = cputime;
                G1 = GaussSeidel(M1,b1,tol,maxi,x0);
                tf = cputime - t0,
                
            % Jacobi
                t0 = cputime;
                J1 = Jacobi(M1,b1,tol,maxi,x0);
                tf = cputime - t0;
                
            % SOR
            
                t0 = cputime;
                S1 = sor(M1,b1,tol,maxi,x0,w);
                tf = cputime - t0;
                
       % Matriz 2
        
            tol = 0.000001;
            maxi = 500;
            [n,m] = size(M2);
            x0 = zeros(n,1);
            
            % Richardson
                t0 = cputime;
                R2 = Richardson(M2,b2,tol,maxi,x0);
                tf = cputime - t0;
                
            % GaussSeide
                t0 = cputime;
                G2 = GaussSeidel(M2,b2,tol,maxi,x0);
                tf = cputime - t0;
                
            % Jacobi
                t0 = cputime;
                J2 = Jacobi(M2,b2,tol,maxi,x0);
                tf = cputime - t0;
                
            % Sor
            
                t0 = cputime;
                S2 = sor(M2,b2,tol,maxi,x0,w);
                tf = cputime - t0;
            
        % Matriz 3
        
            tol= 0.000000001;
            maxi = 500;
            [n,m] = size(M3);
            x0 = zeros(n,1);
            
            % Richardson
                t0 = cputime;
                R3 = Richardson(M3,b3,tol,maxi,x0);
                tf = cputime - t0;
            
            % GaussSeide
                t0 = cputime;
                G3 = GaussSeidel(M3,b3,tol,maxi,x0);
                tf = cputime - t0;
                
            % Jacobi
                t0 = cputime;
                J3 = Jacobi(M3,b3,tol,maxi,x0);
                tf = cputime - t0;
                
            % SOR
                t0 = cputime;
                S3 = sor(M3,b3,tol,maxi,x0,w);
                tf = cputime - t0;
                
    % Pregunta 1.d. Radio espectral de las matrices de iteracion y halle el
    % residual
   
        % Metodo de Richardsor
        
            % Matriz 1
                % Radio Espectral
                    I = eye(3);
                    H = I - M1;
                    RadEspec_Richar_M1 = max(abs(eig(H)));
                    
                % Residual
                    ResR1 = norm((b1-(M1*R1)),inf);
                    
            % Matriz 2
                % Radio Espectral
                    I = eye(4);
                    H = I - M2;
                    RadEspec_Richar_M2 = max(abs(eig(H)));
                
                % Residual
                    ResR2 = norm((b2-(M2*R2)),inf);
                    
            % Matriz 3
                % Radio Espectral
                    I = eye(6);
                    H = I - M3;
                    RadEspec_Richar_M3 = max(abs(eig(H)));
                    
                % Residual
                    ResR3 = norm((b3-(M3*R3)),inf);
                
        % Metodo de Jacobi
        
           % Matriz 1
                % Radio Espectral
                    D = diag(diag(M1));
                    E = -tril(M1,-1);
                    F = -triu(M1,1);
                
                    invD = inv(D);
                    H = invD*(E+F);
                    RadEspec_Jacob_M1 = max(abs(eig(H)));
                    
                % Residual
                    ResJ1 = norm((b1-(M1*J1)),inf);
        
            % Matriz M2
                % Radio Espectral
                    D = diag(diag(M2));
                    E = -tril(M2,-1);
                    F = -triu(M2,1);
                
                    invD = inv(D);
                    H = invD*(E+F);
                    RadEspec_Jacob_M2 = max(abs(eig(H)));
                    
                % Residual
                    ResJ2 = norm((b2-(M2*J2)),inf);
                
            % Matriz M3
                % Radio Espectral
                    D = diag(diag(M3));
                    E = -tril(M3,-1);
                    F = -triu(M3,1);
                
                    invD = inv(D);
                    H = invD*(E+F);
                    RadEspec_Jacob_M3 = max(abs(eig(H)));
                    
                % Residual
                    ResJ3 = norm((b3-(M3*J3)),inf);
               
        % Metodo de GaussSeidel
        
            % Matriz 1
                % Radio Espectral
                    D = diag(diag(M1));
                    E = -tril(M1,-1);
                    F = -triu(M1,1);
                
                    H = (inv(D-E))*F;
                    RadEspec_GS_M1 = max(abs(eig(H)));
                    
                % Residual  
                    ResG1 = norm((b1-(M1*G1)),inf);
                  
            % Matriz M2
                % Radio Espectral
                    D = diag(diag(M2));
                    E = -tril(M2,-1);
                    F = -triu(M2,1);
                
                    H = (inv(D-E))*F;
                    RadEspec_GS_M2 = max(abs(eig(H)));
                    
                % Residual  
                    ResG2 = norm((b2-(M2*G2)),inf);
                    
            % Matriz M3
                % Radio Espectral
                    D = diag(diag(M3));
                    E = -tril(M3,-1);
                    F = -triu(M3,1);
                
                    H = (inv(D-E))*F;
                    RadEspec_GS_M3 = max(abs(eig(H)));
                
                % Residual
                    ResG3 = norm((b3-(M3*G3)),inf);
                
    % Metodo de SOR
    
            % Matriz 1
                % Radio espectral
                    D = diag(diag(M1));
                    E = -tril(M1,-1);
                    F = -triu(M1,1);
                    w = 1.1;
                
                    H = (inv(D-(w*E)))*(((1-w)*D)+(w*F));
                    RadEspec_Sort_M1 = max(abs(eig(H)));
                    
                % Residual
                    ResS1 = norm((b1-(M1*S1)),inf);
                    
            % Matriz 2
                % Radio espectral
                    D = diag(diag(M2));
                    E = -tril(M2,-1);
                    F = -triu(M2,1);
                    w = 1.1;
                
                    H = (inv(D-(w*E)))*(((1-w)*D)+(w*F));
                    RadEspec_Sort_M2 = max(abs(eig(H)));
                    
                % Residual
                    ResS2 = norm((b2-(M2*S2)),inf);
                
            % Matriz 3
                % Radio Espectral
                    D = diag(diag(M3));
                    E = -tril(M3,-1);
                    F = -triu(M3,1);
                    w = 1.1;
                
                    H = (inv(D-(w*E)))*(((1-w)*D)+(w*F));
                    RadEspec_Sort_M3 = max(abs(eig(H)));
                
                % Residual
                    ResS3 = norm((b3-(M3*S3)),inf);
                