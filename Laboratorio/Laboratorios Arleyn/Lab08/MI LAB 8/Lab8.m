% Nombre: Arleyn Goncalves
% Carnet: 10-10290
% Laboratorio 8

% FALTA
%   - GRAFICA... FALTA LA FUNCION


f = @(x) (x*sin(x))/((x^2) + 1);

% Primero creamos los vectores igualmente esparcidos

     % Vector esparcido en 10 puntos
        vector10 = linspace(-4*pi,4*pi,10);
     
     % Vector espacido en 30 puntos
        vector30 = linspace(-4*pi,4*pi,30);
        
     % Vector esparcido en 50 puntos
        vector50 = linspace(-4*pi,4*pi,50);
      
% Pregunta 1 FALTA IMPLEMENTAR LA INTERPOLACION EN LA FORMA CANONICA

    % Creamos la Matriz Vandermonde para el vector10, vector30 y vector50
        MatrizVander10 = Vandermonde(vector10);
        MatrizVander30 = Vandermonde(vector30);
        MatrizVander50 = Vandermonde(vector50);
        
    % Creamos el vecto b
        b10 = Vectorb(vector10);
        b30 = Vectorb(vector30);
        b50 = Vectorb(vector50);
        
    % Resolvemos el sistema Ax = y
        
        % Vector esparcido en 10 puntos
            [L,U] =lu_lab3(MatrizVander10);
            [d] = sustitucionp(L,b10);
            [x] = sustitucionr(U,d);
            Res10 = x;
            
        % Vector esparcido en 30 puntos
            [L,U] =lu_lab3(MatrizVander30);
            [d] = sustitucionp(L,b30);
            [x] = sustitucionr(U,d);
            Res30 = x;
            
        % Vector esparcido en 50 puntos
            [L,U] =lu_lab3(MatrizVander50);
            [d] = sustitucionp(L,b50);
            [x] = sustitucionr(U,d);
            Res50 = x;
        
% Pregunta 2. Aplicar el polinomio de interpolacion en la forma de Lagrange

    % Usamos el vector y el resultado del vector usando la funcion 
    % definido.
    
        PolLagrange10 = Lagrange(vector10,b10);
        PolLagrange30 = Lagrange(vector30,b30);
        PolLagrange50 = Lagrange(vector50,b50);
        
% Pregunta 3. Grafique la funcion, el polinomio de interpolacion y los
% puntos tomados
% 
% 
%         subplot(2,2,1)
%         hold on
%         plot(vector10,b10,'o');
%         xlabel('Valores de un vector');
%         ylabel('f(x)');
%         title('Esparcido en 10 puntos');
%         plot(vector10,Res10)
%         plot(vector10,PolLagrange10)
%         hold off
%  
%         subplot(2,2,2)
%         plot(vector30,fun)
%         hold on
%         plot(vector30,b30,'o');
%         xlabel('Valores de un vector');
%         ylabel('f(x)');
%         title('Esparcido en 30 puntos');
%         plot(vector30,Res30)
%         plot(vector30,PolLagrange30)
%         hold off
%         
%         subplot(2,2,3)
%         plot(vector50,fun)
%         hold on
%         plot(vector50,b50,'o');
%         xlabel('Valores de un vector');
%         ylabel('f(x)');
%         title('Esparcido en 50 puntos');
%         plot(vector50,Res50)
%         plot(vector50,PolLagrange50)
%         hold off
 
 % Pregunta 4. Evaluar con Horner en los polinomios interpolantes de 50
 % puntos
 
    % Interpolacion de Lagrage
    
        punto = -6.1333;
        % evaluar polinomio
            eval1a = Horn(PolLagrange50,punto)
        % Evaluar polinomio Real
            eval1b = f(-6.1333)
            
            % ERROR RELATIVO
                Error1 = abs((eval1a - eval1b)/eval1b)
 
        punto = -1.4142;
        % evaluar polinomio
            eval2a = Horn(PolLagrange50,punto)
        % Evaluar polinomio Real
            eval2b = f(-1.4142)
            
            % ERROR RELATIVO
                Error2 = abs((eval2a - eval2b)/eval2b)
            
    % Polinomio de Interpolacion de forma canonica
    
        punto = -6.1333;
        % evaluar polinomio
            eval3a = Horn(Res50,punto)
        % Evaluar polinomio Real
            eval3b = f(-6.1333)
            
            % ERROR RELATIVO
                Error3 = abs((eval3a - eval3b)/eval3b)
            
        punto = -1.4142;
        % evaluar polinomio
            eval4a = Horn(Res50,punto)
        % Evaluar polinomio Real
            eval4b = f(-1.4142)
            
            % ERROR RELATIVO
                Error3 = abs((eval4a - eval4b)/eval4b)
            
            