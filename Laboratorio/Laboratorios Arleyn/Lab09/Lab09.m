% Nombre: Arleyn Goncalves
% Carnet: 10-10290
% Laboratorio 9

f = @(x) (x*sin(x))/((x^2) + 1);
df = @(x) ((x*((x^2) + 1)*cos(x)) - (((x^2) + 1)*sin(x)))/(((x^2) + 1)^2);

% Pregunta 1: Aplicar interpolacion en forma de Newton en diferencias divididas 
% para 30 y 50 puntos equidistantes en el intervalo [-4*pi,4*pi]

    % Vector equidistante en 10 puntos
        n = 10; 
        vector10 = (-1: 2/(n-1) :1); 
    % Se evalua el vector10 en f
        b10 = Vectorb(vector10);
        
    % Vector equidistante en 50 puntos
        n = 50; 
        vector50 = (-1: 2/(n-1) :1);   
    % Se evalua el vector50 en f
        b50 = Vectorb(vector50);
        
    % Ahora calculamos la interpolacion de newton para el vector 10
        Newton10 = InterpolNewton(vector10,b10);
        
    % Ahora calculamos la interpolacion de newton para el vector 50
        Newton50 = InterpolNewton(vector50,b50);
        
% % Pregunta 2: Aplicar interpolacion de hermite en diferencias divididas 
% % para 15 y 25 puntos equidistantes en el intervalo [-4*pi,4*pi]
% 
%     % Vector equidistante en 15 puntos
%         n = 15; 
%         vector15 = (-1: 2/(n-1) :1);
%     % Se evalua el vector15 en f
%         b15 = Vectorb(vector15);
%     % Se evalua el vector15 en f'
%         df15 = Vectorbdf(vector15);
%         
%     % Vector equidistante en 25 puntos
%         n = 25;
%         vector25 = (-1: 2/(n-1) :1);    
%     % Se evalua el vector25 en f
%         b25 = Vectorb(vector25);
%     % Se evalua el vector15 en f'
%         df25 = Vectorbdf(vector25);
%         
%     % Calculamos hermite vector 15
%         Hermite15 = hermite(vector15,b15,df15);
%     % Calculamos hermite vector 25
%         Hermite25 = hermite(vector25,b25,df25);
        
% Pregunta 3. Aplicar lo anterior con los nodos de interpolacion de
% chebychec

    % INTERPOLACION DE NEWTON

        % Vector equidistante en 10 puntos
            n = 10;
            vector10Cheby = cos((2*(1:n)'-1)*pi/(2*n))'; % calculamos los nodos de Chebyshev
        % Se evalua el vector10Cheby en f
            b10Cheby = Vectorb(vector10Cheby);
        
        % Vector equidistante en 50 puntos
            n = 50;
            vector50Cheby = cos((2*(1:n)'-1)*pi/(2*n))'; % calculamos los nodos de Chebyshev
        % Se evalua el vector10Cheby en f
            b50Cheby = Vectorb(vector50Cheby);
            
        % Ahora calculamos la interpolacion de newton para el vector 10
             Newton10Cheby = InterpolNewton(vector10Cheby,b10Cheby);
        
        % Ahora calculamos la interpolacion de newton para el vector 50
             Newton50Cheby = InterpolNewton(vector50Cheby,b50Cheby);
            
% Pregunta 4. Graficas f(x), para los nodos equidistantes interpolados con
% newton y para los nodos de chebychev.
        
        subplot(2,1,1)
        hold on
        plot(vector10,b10,'o');
        plot(vector10,Eval(vector10,b10,vector10),'r');
        plot(vector10,Eval(vector10Cheby,b10Cheby,vector10Cheby),'g');
        title('Equidistantes 10 puntos');
        legend('f(x)','Newton','Newton(Nodos Chebychev)');
        hold off
        
        subplot(2,1,2)
        hold on
        plot(vector50,b50,'o');
        plot(vector50,Eval(vector50,b50,vector50),'r');
        plot(vector50Cheby,Eval(vector50Cheby,b50Cheby,vector50Cheby),'g');
        title('Equidistantes 50 puntos');
        legend('f(x)','Newton','Newton(Nodos Chebychev)');
        hold off