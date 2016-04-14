%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             Laboratorio 8                               %
%                            Calculo Numerico                             %
%                            Francisco Sucre                              %
%                               10-10717                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%% Laboratorio 8 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Considere la siguiente funcion

f = @(x) (x*sin(x))/((x^2) + 1);

% Tomando 10, 30 y 50 puntos igualmente espaciados en el intervalo [−4π,4π]

     % Vector esparcido en 10 puntos
        x10 = linspace(-4*pi,4*pi,10);
     
     % Vector espacido en 30 puntos
        x30 = linspace(-4*pi,4*pi,30);
        
     % Vector esparcido en 50 puntos
        x50 = linspace(-4*pi,4*pi,50);
      
% (a) Obtenga el polinomio de interpolacion en la forma canonica 
% resolviendo el SEL asociado (Ax = y donde A es la matriz de Vandermonde). 
% El polinomio obtenido debe ser evaluado en la forma de Horner cuando
% sea requerido.

        Matriz_Vand10 = Matriz_Vandermonde(x10);
        Matriz_Vand30 = Matriz_Vandermonde(x30);
        Matriz_Vand50 = Matriz_Vandermonde(x50);
        
    % Creamos el vector b
    
        b10 = Vector_y(x10);
        b30 = Vector_y(x30);
        b50 = Vector_y(x50);
        
    %%%%%%%%%%%%%%%%%%%%%% Encontramos los polinomios %%%%%%%%%%%%%%%%%%%%%
        
        % Vector esparcido en 10 puntos
           
            Coef_Vand_10 = ResolverLU(Matriz_Vand10,b10,true,1);
            Coef_Vand_10 = Coef_Vand_10';
            Coef_Vand_10 = Coef_Vand_10(length(Coef_Vand_10):-1:1);
            
        % Vector esparcido en 30 puntos

            Coef_Vand_30 = ResolverLU(Matriz_Vand30,b30,true,1);
            Coef_Vand_30 = Coef_Vand_30';
            Coef_Vand_30 = Coef_Vand_30(length(Coef_Vand_30):-1:1);
            
        % Vector esparcido en 50 puntos
        
            Coef_Vand_50 = ResolverLU(Matriz_Vand50,b50,true,1);
            Coef_Vand_50 = Coef_Vand_50';
            Coef_Vand_50 = Coef_Vand_50(length(Coef_Vand_50):-1:1);
        
% (b) Obtenga el polinomio de interpolacion en la forma de Lagrange. Debe
% implementar el algoritmo.
    
        Pol_Lagrange10 = Poli_Lagrange(x10,b10);
        Pol_Lagrange10 = Pol_Lagrange10';
        Pol_Lagrange10 = Pol_Lagrange10(length(Pol_Lagrange10):-1:1);
        Pol_Lagrange30 = Poli_Lagrange(x30,b30);
        Pol_Lagrange30 = Pol_Lagrange30';
        Pol_Lagrange30 = Pol_Lagrange30(length(Pol_Lagrange30):-1:1);        
        Pol_Lagrange50 = Poli_Lagrange(x50,b50);
        Pol_Lagrange50 = Pol_Lagrange50';
        Pol_Lagrange50 = Pol_Lagrange50(length(Pol_Lagrange50):-1:1);
        
% (c) Grafique f(x), el polinomio de interpolacion para cada metodo y los
% puntos tomados en una ventana de tres graficos (una por cada cantidad
% de puntos).


        subplot(3,1,1)
        hold on
        plot(x10,f(50),'x');
        plot(x10,polyval(Coef_Vand_10,x10),'b');
        plot(x10,polyval(Pol_Lagrange10,x10),'r');
        legend('Funcion real','Interpolacion Canonica','Inter. Lagrange');
        xlabel('Valores de un vector');
        ylabel('f(x)');
        title('Esparcido en 10 puntos');
        hold off
 
        subplot(3,1,2)
        hold on
        plot(x30,f(50),'x');
        plot(x30,polyval(Coef_Vand_30,x30),'b')
        plot(x30,polyval(Pol_Lagrange30,x30),'r')
        legend('Funcion real','Interpolacion Canonica','Inter. Lagrange');
        xlabel('Valores de un vector');
        ylabel('f(x)');
        title('Esparcido en 30 puntos');
        hold off
        
        subplot(3,1,3)
        hold on
        plot(x50,f(50),'x');
        plot(x50,polyval(Coef_Vand_50,x50),'b')
        plot(x50,polyval(Pol_Lagrange50,x50),'r') 
        legend('Funcion real','Interpolacion Canonica','Inter. Lagrange');
        xlabel('Valores de un vector');
        ylabel('f(x)');
        title('Esparcido en 50 puntos');
        hold off
 
% (d) Aproxime los valores de f(−6.1333) y f(−1.4142) usando los distintos
% polinomios interpolantes para 50 puntos. Calcule el error relativo.

    %%%%%%%%%%%%%%%%%%%%%%%%%% LAGRANGE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
        punto = -6.1333;
        % evaluar polinomio
            eval50_Lagrange_1 = Evaluar_Horn(Pol_Lagrange50,punto);
        % Evaluar polinomio Real
            eval50_Real_1 = f(punto);
            
            % ERROR RELATIVO
                Error1 = abs((eval50_Lagrange_1 - eval50_Real_1)/eval50_Real_1);
 
        punto = -1.4142;
        % evaluar polinomio
            eval50_Lagrange_2 = Evaluar_Horn(Pol_Lagrange50,punto);
        % Evaluar polinomio Real
            eval50_Real_2 = f(punto);
            
            % ERROR RELATIVO
                Error2 = abs((eval50_Lagrange_2 - eval50_Real_2)/eval50_Real_2);
            
    %%%%%%%%%%%%%%%%%%%%%%%%%%% FORMA CANONICA %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
        punto = -6.1333;
        
        eval50_Canonica_1 = Evaluar_Horn(Coef_Vand_50,punto);
            
        Error_Can_1 = abs((eval50_Canonica_1 - eval50_Real_1)/eval50_Real_1);
            
        punto = -1.4142;
        
        eval50_Canonica_2 = Evaluar_Horn(Coef_Vand_50,punto);
        
        Error_Can_2 = abs((eval50_Canonica_2 - eval50_Real_2)/eval50_Real_2);
                
                
                