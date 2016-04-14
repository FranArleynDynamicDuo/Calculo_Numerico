%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             Laboratorio 10                              %
%                            Calculo Numerico                             %
%                            Francisco Sucre                              %
%                               10-10717                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
%%%%%%%%%%%%%%%%%%%%%%%%% Laboratorio 10 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%% PARTE I %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 
% Utilice los metodos de Interpolacion de Newton y Spline Cubicos para
% aproximar las siguientes funciones en el intervalo [−3, 3]

    f = @(x) (sin(x.^2));
    g = @(x) (1./(1 + x.^2));
    
% Para cada funcion grafique sobre un mismo lienzo, la funcion y cada 
% aproximacion con un color distinto. Muestre en el lienzo los puntos que
% utilizo en cada la aproximacion. Escriba una leyenda para senalalar cada 
% curva.

    xeval = linspace(-3,3,150);
    feval = f(xeval);
    geval = g(xeval);
    
%%%%%%%%%%% FUNCION g %%%%%%%%%%%

    %%%%%% 6 puntos %%%%%%

        x6 = linspace(-3,3,6);
        y6 = g(x6);
        cn6 = Newton(x6,y6);
        cs6 = spline(x6,[0 y6 0]);
        
        subplot(4,2,1)
        hold on
        plot(xeval,geval,'x');
        plot(xeval,EvaluarNewton(x6,cn6,xeval),'b');
        plot(xeval,ppval(cs6,xeval),'r');
        legend('Funcion real','Inter. Newton','Inter. spline');
        xlabel('Valores de un vector');
        ylabel('g(x)');
        title('g(x) con 6 Nodos');
        hold off  
        
        ErrorNew6 = norm(EvaluarNewton(x6,cn6,xeval) - geval,inf)/norm(geval,inf);
        ErrorSpli6 = norm(ppval(cs6,xeval) - geval,inf)/norm(geval);
    
    %%%%%% 11 puntos %%%%%%
   
        x11 = linspace(-3,3,11);
        y11 = g(x11);
        cn11 = Newton(x11,y11);
        cs11 = spline(x11,[0 y11 0]);
        
        subplot(4,2,2)
        hold on
        plot(xeval,geval,'x');
        plot(xeval,EvaluarNewton(x11,cn11,xeval),'b');
        plot(xeval,ppval(cs11,xeval),'r');
        legend('Funcion real','Inter. Newton','Inter. spline');
        xlabel('Valores de un vector');
        ylabel('g(x)');
        title('g(x) con 11 Nodos');
        hold off

        ErrorNew11 = norm(EvaluarNewton(x11,cn11,xeval) - geval,inf)/norm(geval,inf);
        ErrorSpli11 = norm(ppval(cs11,xeval) - geval,inf)/norm(geval);
        
    %%%%%% 21 puntos %%%%%%
    
        x21 = linspace(-3,3,21);
        y21 = g(x21);
        cn21 = Newton(x21,y21);  
        cs21 = spline(x21,[0 y21 0]);
        
        subplot(4,2,3)
        hold on
        plot(xeval,geval,'x');
        plot(xeval,EvaluarNewton(x21,cn21,xeval),'b');
        plot(xeval,ppval(cs21,xeval),'r');
        legend('Funcion real','Inter. Newton','Inter. spline');
        xlabel('Valores de un vector');
        ylabel('g(x)');
        title('g(x) con 21 Nodos');
        hold off   
        
        ErrorNew21 = norm(EvaluarNewton(x21,cn21,xeval) - geval,inf)/norm(geval,inf);
        ErrorSpli21 = norm(ppval(cs21,xeval) - geval,inf)/norm(geval);        
    
%%%%%%%%%%% FUNCION f %%%%%%%%%%%
    
    %%%%%% 7 puntos %%%%%%

        x7 = linspace(-3,3,7);
        y7 = f(x7);
        cn7 = Newton(x7,y7);
        cs7 = spline(x7,[0 y7 0]);
        
        subplot(4,2,4)
        hold on
        plot(xeval,feval,'x');
        plot(xeval,EvaluarNewton(x7,cn7,xeval),'b');
        plot(xeval,ppval(cs7,xeval),'r');
        legend('Funcion real','Inter. Newton','Inter. spline');
        xlabel('Valores de un vector');
        ylabel('f(x)');
        title('f(x) con 7 Nodos');
        hold off    
        
        ErrorNew7 = norm(EvaluarNewton(x7,cn7,xeval) - feval,inf)/norm(feval,inf);
        ErrorSpli7 = norm(ppval(cs7,xeval) - feval,inf)/norm(feval);        
    
    %%%%%% 13 puntos %%%%%%
    
        x13 = linspace(-3,3,13);
        y13 = f(x13);
        cn13 = Newton(x13,y13);
        cs13 = spline(x13,[0 y13 0]);
        
        subplot(4,2,5)
        hold on
        plot(xeval,feval,'x');
        plot(xeval,EvaluarNewton(x13,cn13,xeval),'b');
        plot(xeval,ppval(cs13,xeval),'r');
        legend('Funcion real','Inter. Newton','Inter. spline');
        xlabel('Valores de un vector');
        ylabel('f(x)');
        title('f(x) con 13 Nodos');
        hold off 

        ErrorNew13 = norm(EvaluarNewton(x13,cn13,xeval) - feval,inf)/norm(feval,inf);
        ErrorSpli13 = norm(ppval(cs13,xeval) - feval,inf)/norm(feval);         
        
    %%%%%% 26 puntos %%%%%%
    
        x26 = linspace(-3,3,26);
        y26 = f(x26);
        cn26 = Newton(x26,y26);
        cs26 = spline(x26,[0 y26 0]);

        subplot(4,2,6)
        hold on
        plot(xeval,feval,'x');
        plot(xeval,EvaluarNewton(x26,cn26,xeval),'b');
        plot(xeval,ppval(cs26,xeval),'r');
        legend('Funcion real','Inter. Newton','Inter. spline');
        xlabel('Valores de un vector');
        ylabel('f(x)');
        title('f(x) con 26 Nodos');
        hold off 
 
        ErrorNew26 = norm(EvaluarNewton(x26,cn26,xeval) - feval,inf)/norm(feval,inf);
        ErrorSpli26 = norm(ppval(cs26,xeval) - feval,inf)/norm(feval);         
        
    %%%%%% 63 puntos %%%%%%
    
        x63 = linspace(-3,3,63);
        y63 = f(x63);
        cn63 = Newton(x63,y63);
        cs63 = spline(x63,[0 y63 0]);
    
        subplot(4,2,7)
        hold on
        plot(xeval,feval,'x');
        plot(xeval,EvaluarNewton(x63,cn63,xeval),'b');
        plot(xeval,ppval(cs63,xeval),'r');
        legend('Funcion real','Inter. Newton','Inter. spline');
        xlabel('Valores de un vector');
        ylabel('f(x)');
        title('f(x) con 63 Nodos');
        hold off     
 
        ErrorNew63 = norm(EvaluarNewton(x63,cn63,xeval) - feval,inf)/norm(feval,inf);
        ErrorSpli63 = norm(ppval(cs63,xeval) - feval,inf)/norm(feval);         
        
    %%%%%% 126 puntos %%%%%%
    
        x126 = linspace(-3,3,126);
        y126 = f(x126);
        cn126 = Newton(x126,y126);
        cs126 = spline(x126,[0 y126 0]);
        
        subplot(4,2,8)
        hold on
        plot(xeval,feval,'x');
        plot(xeval,EvaluarNewton(x126,cn126,xeval),'b');
        plot(xeval,ppval(cs126,xeval),'r');
        legend('Funcion real','Inter. Newton','Inter. spline');
        xlabel('Valores de un vector');
        ylabel('f(x)');
        title('f(x) con 126 Nodos');
        hold off       
    
        ErrorNew126 = norm(EvaluarNewton(x126,cn126,xeval) - feval,inf)/norm(feval,inf);
        ErrorSpli126 = norm(ppval(cs126,xeval) - feval,inf)/norm(feval);      
    
%%%%%%%%%%%%%%%%%%%%%%%%%%% PARTE II %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 
    clf
    t = 1:length(x);
    x = [0, 0 , 0.1 , 0.2 , 0.9 , 1.2 , 1.5 , 1.7 , 2 , 2.5 , 2 , 1.7 , 1.5 , 1.2 , 0.9 , 0.2 , 0.1 , -0.5 , -0.7 , -1 , -2];
    y = [0,0.3, 0.6 , 0.9 , 1   , 1.3 , 1.7 , 1.9 , 2.3,2.3 ,2.3, 2.2 , 2.0 , 1.8 , 1.7 , 1.6 , 1.5 , 1.4 , 1.4, 1.4, 1.2];
    t = 1:length(x);
    th = linspace(1, length(x));
    xh = interp1(t, x,th, 'spline');
    yh = interp1(t, y,th, 'spline');
    plot(xh, yh, 'k', 'linewidth', 5)
    hold on;
    plot(x, y, 'ro', 'linewidth', 3)
